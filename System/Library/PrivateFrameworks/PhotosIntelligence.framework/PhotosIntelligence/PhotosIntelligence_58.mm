uint64_t sub_1C73ADB98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47();
  v7 = v6;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_14();
  *v10 = v9;
  v7[181] = v2;

  if (v2)
  {
    memcpy(v7 + 40, v7 + 2, 0x130uLL);
    sub_1C6FE0DC0((v7 + 40));
  }

  else
  {
    v7[182] = a2;
    v7[183] = a1;
    memcpy(v7 + 116, v7 + 2, 0x130uLL);
    sub_1C6FE0DC0((v7 + 116));

    __swift_destroy_boxed_opaque_existential_1((v7 + 162));
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C73ADD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v50 = *(v16 + 1456);
  v51 = *(v16 + 1464);
  v49 = *(v16 + 1416);
  v17 = *(v16 + 1408);
  v18 = *(v16 + 1392);
  v19 = *(v16 + 1384);
  v20 = *(v16 + 1344);
  v21 = *(v16 + 1336);
  OUTLINED_FUNCTION_64_17();
  v22 = OUTLINED_FUNCTION_55_29();
  v23(v22);
  HIDWORD(a10) = HIBYTE(a13);
  OUTLINED_FUNCTION_64_17();
  v24 = OUTLINED_FUNCTION_55_29();
  v25(v24);
  OUTLINED_FUNCTION_64_17();
  v26 = OUTLINED_FUNCTION_55_29();
  v28 = v27(v26);
  v17(v19, v18);
  v29 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v29, v30);
  OUTLINED_FUNCTION_74_15();
  v31 = OUTLINED_FUNCTION_49_3();
  v33 = v32(v31);
  v34 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v35 = *(v34 + 56);
  type metadata accessor for CuratedStory();
  v36 = OUTLINED_FUNCTION_15_1();
  v35(v36);
  *v21 = HIBYTE(a13);
  memcpy((v21 + 8), (v16 + 624), 0x130uLL);
  *(v21 + 312) = v28;
  *(v21 + 320) = v51;
  *(v21 + 328) = v50;
  v37 = *(v16 + 1248);
  v38 = *(v16 + 1280);
  v39 = *(v16 + 1232);
  *(v21 + 368) = *(v16 + 1264);
  *(v21 + 384) = v38;
  *(v21 + 336) = v39;
  *(v21 + 352) = v37;
  *(v21 + 400) = v33;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_129();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, v49, a10, v50, v51, a13, a14, a15, a16);
}

uint64_t sub_1C73ADEC8()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 1296);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C73ADF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[89] = v5;
  v6[88] = a5;
  v6[87] = a4;
  v6[86] = a3;
  v6[85] = a2;
  v6[84] = a1;
  v7 = sub_1C754F2FC();
  v6[90] = v7;
  v6[91] = *(v7 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F8);
  v6[96] = v8;
  v6[97] = *(v8 - 8);
  v6[98] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B108);
  v6[99] = v9;
  v6[100] = *(v9 - 8);
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73AE0F8, 0, 0);
}

uint64_t sub_1C73AE0F8()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  sub_1C754F2CC();
  v1 = v0[89];
  if (*(v1 + *(_s9GeneratorVMa_1() + 20) + 19) == 1)
  {
    (*(v0[97] + 16))(v0[98], v0[84], v0[96]);
    sub_1C7099594(&qword_1EC21B110, &qword_1EC21B0F8);
    sub_1C7550E8C();
    v0[103] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_33_1(&qword_1EC21B118, &qword_1EC21B108);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[104] = v2;
    *v2 = v3;
    OUTLINED_FUNCTION_22_58(v2);
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6D8C8](v4);
  }

  else
  {
    sub_1C7550DBC();
    v0[112] = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[113] = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_2_113(v6);
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6DB90](v8);
  }
}

uint64_t sub_1C73AE31C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[105] = v0;

  if (v0)
  {
    (*(v3[100] + 8))(v3[102], v3[99]);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AE440()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 824);
  if (*(v0 + 288) == 255)
  {
    (*(*(v0 + 800) + 8))(*(v0 + 816), *(v0 + 792));
    sub_1C6FB5FC8(v0 + 240, &qword_1EC21B120);
    v57 = v1;
    v14 = *(v1 + 16);
    if (v14)
    {
      v15 = *(v0 + 824) + 32;
      v16 = MEMORY[0x1E69E7CC0];
      v17 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C73AFCEC(v15, v0 + 296);
        if (*(v0 + 344))
        {
          v18 = *(v0 + 336);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB1E00();
            v17 = v23;
          }

          v20 = *(v17 + 16);
          v19 = *(v17 + 24);
          if (v20 >= v19 >> 1)
          {
            OUTLINED_FUNCTION_3_4(v19);
            sub_1C6FB1E00();
            v17 = v24;
          }

          *(v17 + 16) = v20 + 1;
          *(v17 + 8 * v20 + 32) = v18;
          __swift_destroy_boxed_opaque_existential_1(v0 + 296);
        }

        else
        {
          sub_1C6F699F8((v0 + 296), v0 + 584);
          sub_1C7055874(v0 + 584, v0 + 624);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB4984();
            v16 = v25;
          }

          v22 = *(v16 + 16);
          v21 = *(v16 + 24);
          if (v22 >= v21 >> 1)
          {
            OUTLINED_FUNCTION_3_4(v21);
            sub_1C6FB4984();
            v16 = v26;
          }

          __swift_destroy_boxed_opaque_existential_1(v0 + 584);
          *(v16 + 16) = v22 + 1;
          sub_1C6F699F8((v0 + 624), v16 + 40 * v22 + 32);
        }

        v15 += 56;
        --v14;
      }

      while (v14);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      v17 = MEMORY[0x1E69E7CC0];
    }

    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    sub_1C75504FC();
    v27 = sub_1C754FEEC();
    v28 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v28))
    {
      v29 = OUTLINED_FUNCTION_20_1();
      *v29 = 134218496;
      *(v29 + 4) = *(v16 + 16);

      *(v29 + 12) = 2048;
      *(v29 + 14) = *(v17 + 16);

      *(v29 + 22) = 2048;
      v30 = *(v57 + 16);

      *(v29 + 24) = v30;

      _os_log_impl(&dword_1C6F5C000, v27, v28, "%ld stories and %ld errors from %ld results", v29, 0x20u);
      OUTLINED_FUNCTION_109();
    }

    else
    {
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
    }

    v31 = sub_1C73AF8A4(v16);
    *(v0 + 848) = v31;

    v32 = *(v31 + 16);
    *(v0 + 856) = v32;
    if (v32)
    {

      v33 = *(v31 + 16);
      *(v0 + 864) = v33;
      v34 = *(v0 + 840);
      if (v33)
      {
        v35 = *(v0 + 848);
        if (!*(v35 + 16))
        {
          __break(1u);
          return MEMORY[0x1EEE6D8C8](v12);
        }

        *(v0 + 456) = 0;
        sub_1C7055874(v35 + 32, v0 + 464);
        v37 = *(v0 + 472);
        v36 = *(v0 + 488);
        v33 = 1;
        v38 = *(v0 + 456);
      }

      else
      {
        v38 = 0uLL;
        v37 = 0uLL;
        v36 = 0uLL;
      }

      *(v0 + 872) = v33;
      *(v0 + 408) = v38;
      *(v0 + 424) = v37;
      *(v0 + 440) = v36;
      if (v36)
      {
        OUTLINED_FUNCTION_41_37();
        v46 = OUTLINED_FUNCTION_70_18();
        v47(v46);
        OUTLINED_FUNCTION_18_57();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v0 + 880) = v48;
        *v48 = v49;
        OUTLINED_FUNCTION_20_56(v48);
        OUTLINED_FUNCTION_17_1();

        __asm { BRAA            X3, X16 }
      }
    }

    else
    {

      v39 = sub_1C754FEEC();
      v40 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1C6F5C000, v39, v40, "No stories generated, throwing best error if possible", v41, 2u);
        OUTLINED_FUNCTION_109();
      }

      v42 = sub_1C73AFB5C(v17);

      if (v42)
      {
        v43 = *(v0 + 728);
        v44 = *(v0 + 720);
        v45 = *(v0 + 688);
        swift_willThrow();
        (*(v43 + 8))(v45, v44);
        goto LABEL_44;
      }

      v34 = *(v0 + 840);
    }

    sub_1C754F2EC();
    if (!v34)
    {
      OUTLINED_FUNCTION_35_26();

      OUTLINED_FUNCTION_25();
LABEL_46:
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X1, X16 }
    }

LABEL_44:
    OUTLINED_FUNCTION_8_74();

    OUTLINED_FUNCTION_43();
    goto LABEL_46;
  }

  v2 = *(v0 + 256);
  *(v0 + 184) = *(v0 + 240);
  *(v0 + 200) = v2;
  *(v0 + 216) = *(v0 + 272);
  *(v0 + 232) = *(v0 + 288);
  sub_1C73AFCEC(v0 + 184, v0 + 352);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 824);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB4A40();
    v4 = v54;
  }

  v5 = *(v4 + 16);
  if (v5 >= *(v4 + 24) >> 1)
  {
    sub_1C6FB4A40();
    v4 = v55;
  }

  sub_1C73AFD24(v0 + 184);
  *(v4 + 16) = v5 + 1;
  v6 = v4 + 56 * v5;
  v8 = *(v0 + 368);
  v7 = *(v0 + 384);
  v9 = *(v0 + 352);
  *(v6 + 80) = *(v0 + 400);
  *(v6 + 48) = v8;
  *(v6 + 64) = v7;
  *(v6 + 32) = v9;
  *(v0 + 824) = v4;
  OUTLINED_FUNCTION_33_1(&qword_1EC21B118, &qword_1EC21B108);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 832) = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_22_58();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6D8C8](v12);
}

uint64_t sub_1C73AEAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v10 = OUTLINED_FUNCTION_68_21();
  v11(v10);
  OUTLINED_FUNCTION_8_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1C73AEB40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 888) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AEC44()
{
  OUTLINED_FUNCTION_115_0();
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 544);
  v2 = *(v0 + 872);
  if (v2 == *(v0 + 864))
  {
    v3 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  else
  {
    v6 = *(v0 + 848);
    if (v2 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    *(v0 + 456) = v2;
    sub_1C7055874(v6 + 40 * v2 + 32, v0 + 464);
    v4 = *(v0 + 472);
    v5 = *(v0 + 488);
    v2 = v7;
    v3 = *(v0 + 456);
  }

  *(v0 + 872) = v2;
  *(v0 + 408) = v3;
  *(v0 + 424) = v4;
  *(v0 + 440) = v5;
  if (v5)
  {
    OUTLINED_FUNCTION_41_37();
    v8 = OUTLINED_FUNCTION_70_18();
    v9(v8);
    OUTLINED_FUNCTION_18_57();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 880) = v10;
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_20_56(v10);

    return v13(v12);
  }

  else
  {

    sub_1C754F2EC();
    OUTLINED_FUNCTION_35_26();
    OUTLINED_FUNCTION_14_60();

    OUTLINED_FUNCTION_43();

    return v14();
  }
}

uint64_t sub_1C73AEE14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 912) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AEF0C()
{
  OUTLINED_FUNCTION_31();
  if (*(v0 + 64) == 255)
  {
    (*(*(v0 + 800) + 8))(*(v0 + 808), *(v0 + 792));
    sub_1C754F2EC();
    OUTLINED_FUNCTION_35_26();
    OUTLINED_FUNCTION_14_60();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_79_16();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v1;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = *(v0 + 64);
  sub_1C754F2BC();
  sub_1C73AFCEC(v0 + 72, v0 + 128);
  if (*(v0 + 176) != 1)
  {
    sub_1C6F699F8((v0 + 128), v0 + 504);
    v8 = OUTLINED_FUNCTION_90();
    v9(v8);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 920) = v10;
    *v10 = v11;
    v10[1] = sub_1C73AF1D8;
    OUTLINED_FUNCTION_79_16();

    __asm { BRAA            X3, X16 }
  }

  sub_1C73AFD24(v0 + 72);
  sub_1C73AFD24(v0 + 128);
  v2 = OUTLINED_FUNCTION_66_2();
  v3(v2);
  *(v0 + 896) = (*(v0 + 896) + 1.0) * 0.5;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 904) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_2_113();
  OUTLINED_FUNCTION_79_16();

  return MEMORY[0x1EEE6DB90](v6);
}

uint64_t sub_1C73AF1D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 928) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AF2D0()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 504);
  sub_1C73AFD24(v0 + 72);
  *(v0 + 896) = (*(v0 + 896) + 1.0) * 0.5;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 904) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_113();

  return MEMORY[0x1EEE6DB90](v3);
}

uint64_t sub_1C73AF368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  __swift_destroy_boxed_opaque_existential_1(v10 + 544);
  v11 = OUTLINED_FUNCTION_90();
  v12(v11);
  OUTLINED_FUNCTION_8_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C73AF420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  (*(v10[100] + 8))(v10[101], v10[99]);
  v11 = OUTLINED_FUNCTION_57_0();
  v12(v11);
  OUTLINED_FUNCTION_8_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C73AF4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[91];
  v12 = v10[90];
  v13 = v10[86];
  __swift_destroy_boxed_opaque_existential_1((v10 + 63));
  sub_1C73AFD24((v10 + 9));
  v14 = OUTLINED_FUNCTION_66_2();
  v15(v14);
  (*(v11 + 8))(v13, v12);
  OUTLINED_FUNCTION_8_74();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

void sub_1C73AF5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, const char *a6)
{
  v32 = a6;
  v30[1] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v31 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v30 - v17;
  v19 = *(v9 + 16);
  v19(v30 - v17, a1, v7, v16);
  v20 = (*(v9 + 88))(v18, v7);
  v21 = *MEMORY[0x1E69E8760];
  v33 = *(v9 + 8);
  v33(v18, v7);
  if (v20 == v21)
  {
    sub_1C7550E1C();
  }

  (v19)(v14, a1, v7);
  v22 = sub_1C754FEEC();
  v23 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v23))
  {
    v24 = swift_slowAlloc();
    v25 = OUTLINED_FUNCTION_20_1();
    v34 = v25;
    *v24 = 136315138;
    (v19)(v31, v14, v7);
    v26 = sub_1C75506EC();
    v28 = v27;
    v33(v14, v7);
    v29 = sub_1C6F765A4(v26, v28, &v34);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_1C6F5C000, v22, v23, v32, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v33(v14, v7);
  }
}

uint64_t sub_1C73AF8A4(uint64_t a1)
{
  type metadata accessor for FreeformStoryGeneration.Montage.Curated.Story(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5 <= 1)
  {
    sub_1C75504FC();
    return a1;
  }

  v6 = a1 + 32;
  while (1)
  {
    sub_1C7055874(v6, v19);
    sub_1C7055874(v19, &v17);
    v7 = OUTLINED_FUNCTION_15_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    v6 += 40;
    if (!--v5)
    {
      v21 = 0;
      memset(v20, 0, sizeof(v20));
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_29_37();
  sub_1C73B04C4(v4, v8);
  sub_1C6F699F8(v19, v20);
LABEL_8:
  sub_1C712A774(v20, &v17, &qword_1EC21B128);
  if (v18)
  {
    sub_1C6F699F8(&v17, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DD0);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_1C755BAB0;
    sub_1C6F699F8(v19, a1 + 32);
LABEL_12:
    sub_1C6FB5FC8(v20, &qword_1EC21B128);
    return a1;
  }

  sub_1C6FB5FC8(&v17, &qword_1EC21B128);
  sub_1C75504FC();
  sub_1C7033F04(1, a1);
  v10 = v9;
  v12 = v11;
  if ((v11 & 1) == 0)
  {
LABEL_11:
    OUTLINED_FUNCTION_66_2();
    sub_1C739D040();
    a1 = v13;
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v12 >> 1, v10))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v16 != (v12 >> 1) - v10)
  {
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  a1 = swift_dynamicCastClass();
  if (!a1)
  {
    swift_unknownObjectRelease();
    a1 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6FB5FC8(v20, &qword_1EC21B128);
  swift_unknownObjectRelease();
  return a1;
}

id sub_1C73AFB5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  for (i = (a1 + 32); v1; --v1)
  {
    v3 = *i;
    v4 = *i;
    v5 = v3;
    v6 = OUTLINED_FUNCTION_90();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6);
    if (swift_dynamicCast())
    {
      if (v11 == 5)
      {
        sub_1C70551BC(v8, v9, v10, v11);
        return v3;
      }

      sub_1C70551BC(v8, v9, v10, v11);
    }

    ++i;
  }

  return 0;
}

uint64_t sub_1C73AFC2C()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_88_0();

  return sub_1C73AD510(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C73AFD54()
{
  OUTLINED_FUNCTION_31();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B140);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_61_20();
  v2 = _s9GeneratorVMa_1();
  OUTLINED_FUNCTION_18(v2);
  v3 = type metadata accessor for StoryGenerationSession(0);
  OUTLINED_FUNCTION_18(v3);
  v4 = sub_1C754FF1C();
  OUTLINED_FUNCTION_18(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138);
  OUTLINED_FUNCTION_76(v5);
  OUTLINED_FUNCTION_75_16();
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_56_26();
  OUTLINED_FUNCTION_17_1();

  return sub_1C73A9B3C(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t objectdestroy_4Tm()
{
  v1 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

void sub_1C73B0094(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4)
{
  v9 = sub_1C754FF1C();
  OUTLINED_FUNCTION_76(v9);
  sub_1C73AF5D0(a1, *(v4 + 16), v4 + ((*(v10 + 80) + 24) & ~*(v10 + 80)), a2, a3, a4);
}

uint64_t sub_1C73B0120()
{
  OUTLINED_FUNCTION_115_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_44();

  return sub_1C73A9F34(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C73B01FC()
{
  OUTLINED_FUNCTION_58_9();
  v1 = _s9GeneratorVMa_1();
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_61_20();
  v2 = type metadata accessor for StoryGenerationSession(0);
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_61_20();
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138);
  OUTLINED_FUNCTION_18(v4);
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_56_26();
  OUTLINED_FUNCTION_129();

  return sub_1C73AAADC(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C73B0468(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C73B04C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C73B0518(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_40_39(uint64_t a1)
{

  return sub_1C73B04C4(a1, type metadata accessor for FreeformStoryGeneration.Montage.Curated.Generator);
}

uint64_t OUTLINED_FUNCTION_54_28()
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 1584);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1C754F1AC();
}

void *OUTLINED_FUNCTION_64_17()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t CollectionFetcherOptions.__allocating_init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(void *a1, void *a2, char *a3, char a4)
{
  v8 = swift_allocObject();
  CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(a1, a2, a3, a4);
  return v8;
}

PhotosIntelligence::CollectionFetcherOptions::Context_optional __swiftcall CollectionFetcherOptions.Context.init(rawValue:)(Swift::String rawValue)
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

uint64_t CollectionFetcherOptions.Context.rawValue.getter()
{
  result = 7105633;
  switch(*v0)
  {
    case 1:
      result = 0x657469726F766166;
      break;
    case 2:
      result = 0x7972616E6964726FLL;
      break;
    case 3:
      result = 0x7972616D6D7573;
      break;
    case 4:
      result = 0x69746172656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73B0870@<X0>(uint64_t *a1@<X8>)
{
  result = CollectionFetcherOptions.Context.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C73B08D0()
{
  result = qword_1EDD0DDC8;
  if (!qword_1EDD0DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DDC8);
  }

  return result;
}

unint64_t sub_1C73B0928()
{
  result = qword_1EC21B168;
  if (!qword_1EC21B168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B168);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CollectionFetcherOptions.Context(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t FreeformStorySurveyDataSource.__allocating_init(memory:)(void *a1)
{
  OUTLINED_FUNCTION_328();
  v2 = swift_allocObject();
  FreeformStorySurveyDataSource.init(memory:)(a1);
  return v2;
}

void *FreeformStorySurveyDataSource.init(memory:)(void *a1)
{
  v3 = v1;
  result = [a1 photoLibrary];
  if (result)
  {
    v3[5] = result;
    v3[6] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    OUTLINED_FUNCTION_328();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C75650C0;
    OUTLINED_FUNCTION_328();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C75650C0;
    OUTLINED_FUNCTION_4_92();
    v124 = 0;
    type metadata accessor for FeatureSurveyYesNoQuestion();
    swift_allocObject();
    OUTLINED_FUNCTION_0_162();
    *(v7 + 32) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v8, v9, v10, v11, v12, v13, 1, v14, v2, 1, &v124);
    v123 = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_0_162();
    *(v7 + 40) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v15, v16, v17, v18, v19, v20, 0, v21, 0x80000001C75AD8D0, 1, &v123);
    v122 = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_0_162();
    *(v7 + 48) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v22, v23, v24, v25, v26, v27, 1, v28, 0x80000001C75AD920, 1, &v122);
    type metadata accessor for FeatureSurveySection();
    v29 = OUTLINED_FUNCTION_11_2();
    v29[2] = 0x6C6C617265764FLL;
    v29[3] = 0xE700000000000000;
    v29[4] = v7;
    *(v6 + 32) = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C7586510;
    OUTLINED_FUNCTION_240();
    v121[8] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_0_162();
    *(v30 + 32) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v31, v32, v33, v34, v35, v36, 1, v37, v97, v105, v113);
    OUTLINED_FUNCTION_240();
    v121[7] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_0_162();
    *(v30 + 40) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v38, v39, v40, v41, v42, v43, 1, v44, v98, v106, v114);
    OUTLINED_FUNCTION_4_92();
    v121[6] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_3_102();
    OUTLINED_FUNCTION_0_162();
    *(v30 + 48) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v45, v46, v47, v48, v49, v50, 1, v51, v99, v107, v115);
    OUTLINED_FUNCTION_240();
    v121[5] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_0_162();
    *(v30 + 56) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v52, v53, v54, v55, v56, v57, 1, v58, v100, v108, v116);
    OUTLINED_FUNCTION_4_92();
    v121[4] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_3_102();
    OUTLINED_FUNCTION_0_162();
    *(v30 + 64) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v59, v60, v61, v62, v63, v64, 0, v65, v101, v109, v117);
    OUTLINED_FUNCTION_4_92();
    v121[3] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_3_102();
    OUTLINED_FUNCTION_0_162();
    *(v30 + 72) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v66, v67, v68, v69, v70, v71, 1, v72, v102, v110, v118);
    OUTLINED_FUNCTION_4_92();
    v121[2] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_3_102();
    OUTLINED_FUNCTION_0_162();
    *(v30 + 80) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v73, v74, v75, v76, v77, v78, 1, v79, v103, v111, v119);
    OUTLINED_FUNCTION_240();
    v121[1] = 0;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_2_114();
    OUTLINED_FUNCTION_0_162();
    *(v30 + 88) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v80, v81, v82, v83, v84, v85, 1, v86, v104, v112, v120);
    v87 = OUTLINED_FUNCTION_11_2();
    v87[2] = 0x736C6961746544;
    v87[3] = 0xE700000000000000;
    v87[4] = v30;
    *(v6 + 40) = v87;
    v88 = OUTLINED_FUNCTION_11_2();
    *(v88 + 16) = xmmword_1C7565670;
    OUTLINED_FUNCTION_240();
    v121[0] = 1;
    OUTLINED_FUNCTION_1_121();
    OUTLINED_FUNCTION_0_162();
    *(v88 + 32) = FeatureSurveyYesNoQuestion.init(analyticsFieldName:TTRYesTemplate:TTRNoTemplate:shouldTriggerTTR:question:isMandatory:viewType:)(v89, v90, v91, v92, v93, v94, 1, v95, "or the produced video:", 0, v121);
    v96 = OUTLINED_FUNCTION_11_2();
    v96[2] = 0;
    v96[3] = 0xE000000000000000;
    v96[4] = v88;
    *(v6 + 48) = v96;
    v3[2] = v6;
    v3[3] = 0xD00000000000002ALL;
    v3[4] = 0x80000001C75ADC60;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FreeformStorySurveyDataSource.makeAttachmentsForTTR()()
{
  v1[2] = v0;
  v2 = sub_1C754DD2C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_1C754DF6C();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73B1194, 0, 0);
}

uint64_t sub_1C73B1194()
{
  type metadata accessor for FreeformStoryDiagnosticsUtils();
  static FreeformStoryDiagnosticsUtils.diagnosticFiles(for:)();
  v2 = v1;
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[2];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(0x44444D4D59595959, 0xED00006D6D48485FLL, v7);
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](*(v6 + 24), *(v6 + 32));
  MEMORY[0x1CCA5CD70](95, 0xE100000000000000);
  sub_1C754DF5C();
  v8 = sub_1C754DECC();
  (*(v4 + 8))(v3, v5);
  v9 = [v7 stringFromDate_];

  v10 = sub_1C755068C();
  v12 = v11;

  MEMORY[0x1CCA5CD70](v10, v12);

  MEMORY[0x1CCA5CD70](0x6E6F736A2ELL, 0xE500000000000000);
  v13 = sub_1C7237954();
  v15 = v14;
  sub_1C734C3B4();
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[3];
  v19 = v0[4];

  sub_1C6FC1640(v13, v15);
  (*(v19 + 16))(v17, v16, v18);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C6FB4B10(0, *(v2 + 16) + 1, 1, v2);
    v2 = v28;
  }

  v21 = *(v2 + 16);
  v20 = *(v2 + 24);
  if (v21 >= v20 >> 1)
  {
    sub_1C6FB4B10(v20 > 1, v21 + 1, 1, v2);
    v2 = v29;
  }

  v23 = v0[5];
  v22 = v0[6];
  v24 = v0[3];
  v25 = v0[4];

  (*(v25 + 8))(v22, v24);
  *(v2 + 16) = v21 + 1;
  (*(v25 + 32))(v2 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v23, v24);

  v26 = v0[1];

  return v26(v2);
}

uint64_t sub_1C73B153C()
{
  v1 = *(v0 + 16);
  v34 = sub_1C6FB6304();
  if (v34)
  {
    v2 = 0;
    v33 = v1 & 0xC000000000000001;
    v31 = v1 & 0xFFFFFFFFFFFFFF8;
    v3 = MEMORY[0x1E69E7CC8];
    v30 = v1 + 32;
    v32 = v1;
    while (1)
    {
      if (v33)
      {
        v4 = MEMORY[0x1CCA5DDD0](v2, v1);
      }

      else
      {
        if (v2 >= *(v31 + 16))
        {
          goto LABEL_42;
        }

        v4 = *(v30 + 8 * v2);
      }

      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = *(v4 + 32);
      if (v6 >> 62)
      {
        v7 = sub_1C75516BC();
        if (v7)
        {
LABEL_10:
          v35 = v2;
          v39 = v6 & 0xC000000000000001;
          v36 = v6 & 0xFFFFFFFFFFFFFF8;
          sub_1C75504FC();
          v8 = 0;
          v37 = v7;
          v38 = v6;
          while (1)
          {
            if (v39)
            {
              v9 = MEMORY[0x1CCA5DDD0](v8, v6);
            }

            else
            {
              if (v8 >= *(v36 + 16))
              {
                goto LABEL_39;
              }

              v9 = *(v6 + 8 * v8 + 32);
            }

            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            v12 = v9[2];
            v11 = v9[3];
            v13 = (*(*v9 + 160))();
            if (v13)
            {
              v14 = v13;
              swift_isUniquelyReferenced_nonNull_native();
              v15 = sub_1C6F78124(v12, v11);
              if (__OFADD__(v3[2], (v16 & 1) == 0))
              {
                goto LABEL_38;
              }

              v17 = v15;
              v18 = v16;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
              if (sub_1C7551A2C())
              {
                v19 = sub_1C6F78124(v12, v11);
                if ((v18 & 1) != (v20 & 1))
                {
                  goto LABEL_43;
                }

                v17 = v19;
              }

              if (v18)
              {
                v21 = v3[7];
                v22 = *(v21 + 8 * v17);
                *(v21 + 8 * v17) = v14;
              }

              else
              {
                v3[(v17 >> 6) + 8] |= 1 << v17;
                v26 = (v3[6] + 16 * v17);
                *v26 = v12;
                v26[1] = v11;
                *(v3[7] + 8 * v17) = v14;
                v27 = v3[2];
                v5 = __OFADD__(v27, 1);
                v28 = v27 + 1;
                if (v5)
                {
                  goto LABEL_40;
                }

                v3[2] = v28;
                sub_1C75504FC();
              }

              v7 = v37;
              v6 = v38;
              v10 = v8 + 1;
            }

            else
            {
              v23 = sub_1C6F78124(v12, v11);
              if (v24)
              {
                v25 = v23;
                swift_isUniquelyReferenced_nonNull_native();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
                v10 = v8 + 1;
                sub_1C7551A2C();

                sub_1C6F65BE8(0, &qword_1EDD10100);
                sub_1C7551A4C();
              }
            }

            ++v8;
            if (v10 == v7)
            {

              v1 = v32;
              v2 = v35;
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_10;
        }
      }

LABEL_33:
      if (v2 == v34)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_36:
    sub_1C6F65BE8(0, &qword_1EC21B178);
    sub_1C755140C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C6FC7E40();
    return v3;
  }

  return result;
}

void sub_1C73B197C()
{
  v1 = *(v0 + 48);
}

uint64_t FreeformStorySurveyDataSource.deinit()
{
  v0 = FeatureSurveyDataSource.deinit();

  return v0;
}

uint64_t FreeformStorySurveyDataSource.__deallocating_deinit()
{
  FreeformStorySurveyDataSource.deinit();
  OUTLINED_FUNCTION_328();

  return swift_deallocClassInstance();
}

id AssetElector.init(photoLibrary:)(uint64_t a1)
{
  v3 = sub_1C754FF1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EC21B180;
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  OUTLINED_FUNCTION_8_75();
  v8 = sub_1C755146C();
  *&v1[v7] = v8;
  v9 = v8;
  sub_1C754FF2C();
  (*(v4 + 32))(&v1[qword_1EDD28CE0], v6, v3);
  *&v1[qword_1EDD28CE8] = a1;
  v10 = type metadata accessor for AssetElector();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_init);
}

char *sub_1C73B1C00(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PNAssetElectionOptions_collectionType;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = (a1 + OBJC_IVAR___PNAssetElectionOptions_collectionLocalIdentifier);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  swift_bridgeObjectRetain_n();
  v9 = sub_1C754FEEC();
  v10 = sub_1C75511BC();

  if (os_log_type_enabled(v9, v10))
  {
    v77 = v2;
    v11 = v7;
    v12 = v5;
    v13 = v8;
    v14 = 0x6E6F73726570;
    v15 = swift_slowAlloc();
    v79[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = 0xE600000000000000;
    v76 = v12;
    v17 = v12;
    v7 = v11;
    switch(v17)
    {
      case 1:
        v16 = 0xE300000000000000;
        v14 = 7628144;
        break;
      case 2:
        v16 = 0xE500000000000000;
        v14 = 0x6D75626C61;
        break;
      case 3:
        v16 = 0xE400000000000000;
        v14 = 1885958772;
        break;
      case 4:
        v14 = 0x79726F6D656DLL;
        break;
      case 5:
        v16 = 0xE500000000000000;
        v14 = 0x746E657665;
        break;
      case 6:
        v14 = 0x72476C6169636F73;
        v16 = 0xEB0000000070756FLL;
        break;
      case 7:
        v14 = 0x707954616964656DLL;
        v16 = 0xE900000000000065;
        break;
      case 8:
        OUTLINED_FUNCTION_13_73();
        OUTLINED_FUNCTION_10_71();
        break;
      case 9:
        OUTLINED_FUNCTION_13_73();
        OUTLINED_FUNCTION_12_68();
        break;
      default:
        break;
    }

    v18 = sub_1C6F765A4(v14, v16, v79);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v8 = v13;
    *(v15 + 14) = sub_1C6F765A4(v13, v11, v79);
    _os_log_impl(&dword_1C6F5C000, v9, v10, "Start electing assets for collectionType '%s', localIdentifier: %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();

    v5 = v76;
    v2 = v77;
  }

  else
  {
  }

  v19 = *(v2 + qword_1EC21B180);
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v20 = v19;
  v21 = PerformanceMeasure.init(name:log:)();
  v22 = objc_opt_self();
  v23 = sub_1C755065C();
  v24 = [v22 uuidFromLocalIdentifier_];

  if (!v24 || (v25 = sub_1C755068C(), v27 = v26, v24, sub_1C6F65BE8(0, &qword_1EDD0CEB0), LOBYTE(v79[0]) = v5, v28 = FeaturedCollectionKind.phSuggestionSubtype.getter(), v75 = *(v2 + qword_1EDD28CE8), v78 = v8, v29 = [v75 librarySpecificFetchOptions], v30 = static PHSuggestion.fetchRelatedCollection(with:suggestionSubtype:options:)(v25, v27, v28, v29), v29, v8 = v78, , !v30) || (v31 = objc_msgSend(v30, sel_firstObject), v30, !v31))
  {
    OUTLINED_FUNCTION_7_83();
    OUTLINED_FUNCTION_0_163();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_86_0();
    *v38 = v5;
    *(v38 + 8) = v8;
    *(v38 + 16) = v7;
    *(v38 + 24) = 0;
    goto LABEL_21;
  }

  objc_opt_self();
  if (!OUTLINED_FUNCTION_9_81())
  {
    objc_opt_self();
    v39 = OUTLINED_FUNCTION_9_81();
    if (v39)
    {
      v40 = v39;
      sub_1C6F65BE8(0, &qword_1EDD0FA88);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v42 = v31;
      if ([v40 isMemberOfClass_])
      {
        v32 = objc_allocWithZone(type metadata accessor for AlbumAssetElector());
        _s18PhotosIntelligence17AlbumAssetElectorC12photoLibraryACSo07PHPhotoG0C_tcfc_0(v75);
        v43 = OUTLINED_FUNCTION_1_122();
        sub_1C741384C(v43, v44);
        goto LABEL_19;
      }
    }

    objc_opt_self();
    v45 = OUTLINED_FUNCTION_9_81();
    if (v45)
    {
      v46 = v45;
      switch(v5)
      {
        case 5:
          v32 = objc_allocWithZone(type metadata accessor for EventAssetElector());
          v57 = v31;
          _s18PhotosIntelligence16TripAssetElectorC12photoLibraryACSo07PHPhotoG0C_tcfc_0(v75);
          v58 = OUTLINED_FUNCTION_1_122();
          v50 = sub_1C72AF804(v58, v59);
          goto LABEL_38;
        case 4:
          v32 = objc_allocWithZone(type metadata accessor for MemoryAssetElector());
          v54 = v31;
          _s18PhotosIntelligence16TripAssetElectorC12photoLibraryACSo07PHPhotoG0C_tcfc_0(v75);
          v55 = OUTLINED_FUNCTION_1_122();
          v50 = sub_1C726E2E8(v55, v56);
          goto LABEL_38;
        case 3:
          v32 = objc_allocWithZone(type metadata accessor for TripAssetElector());
          v47 = v31;
          _s18PhotosIntelligence16TripAssetElectorC12photoLibraryACSo07PHPhotoG0C_tcfc_0(v75);
          v48 = OUTLINED_FUNCTION_1_122();
          v50 = sub_1C710CE7C(v48, v49);
LABEL_38:
          v37 = v50;
          goto LABEL_39;
      }

      OUTLINED_FUNCTION_7_83();
      OUTLINED_FUNCTION_0_163();
      swift_getWitnessTable();
      swift_allocError();
      *v60 = v5;
      *(v60 + 8) = v46;
      *(v60 + 16) = 0;
      v61 = 3;
    }

    else
    {
      objc_opt_self();
      if (OUTLINED_FUNCTION_9_81())
      {
        v32 = objc_allocWithZone(type metadata accessor for SocialGroupAssetElector());
        v51 = v31;
        _s18PhotosIntelligence23SocialGroupAssetElectorC12photoLibraryACSo07PHPhotoH0C_tcfc_0(v75);
        v52 = OUTLINED_FUNCTION_1_122();
        v50 = sub_1C74DE590(v52, v53);
        goto LABEL_38;
      }

      objc_opt_self();
      if (OUTLINED_FUNCTION_9_81())
      {
        v32 = objc_allocWithZone(type metadata accessor for HighlightAssetElector());
        v62 = v31;
        _s18PhotosIntelligence21HighlightAssetElectorC12photoLibraryACSo07PHPhotoG0C_tcfc_0(v75);
        v63 = OUTLINED_FUNCTION_1_122();
        v50 = sub_1C73FF980(v63, v64);
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_7_83();
      OUTLINED_FUNCTION_0_163();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_86_0();
      *(v60 + 8) = 0;
      *(v60 + 16) = 0;
      *v60 = v31;
      v61 = 2;
    }

    *(v60 + 24) = v61;
LABEL_21:
    swift_willThrow();

    return v21;
  }

  v32 = objc_allocWithZone(type metadata accessor for PersonAssetElector());
  v33 = v31;
  _s18PhotosIntelligence23SocialGroupAssetElectorC12photoLibraryACSo07PHPhotoH0C_tcfc_0(v75);
  v34 = OUTLINED_FUNCTION_1_122();
  v36 = sub_1C70A4320(v34, v35);
LABEL_19:
  v37 = v36;
LABEL_39:

  v65 = v37;
  sub_1C6F85170();
  sub_1C75504FC();
  v21 = v65;
  v66 = sub_1C754FEEC();
  v67 = sub_1C75511BC();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = 0x6E6F73726570;
    v69 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v69 = 134218498;
    v70 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_fetchResult;
    swift_beginAccess();
    *(v69 + 4) = [*&v21[v70] count];

    *(v69 + 12) = 2080;
    v71 = 0xE600000000000000;
    switch(v67)
    {
      case 1:
        v71 = 0xE300000000000000;
        v68 = 7628144;
        break;
      case 2:
        v71 = 0xE500000000000000;
        v68 = 0x6D75626C61;
        break;
      case 3:
        v71 = 0xE400000000000000;
        v68 = 1885958772;
        break;
      case 4:
        v68 = 0x79726F6D656DLL;
        break;
      case 5:
        v71 = 0xE500000000000000;
        v68 = 0x746E657665;
        break;
      case 6:
        v68 = 0x72476C6169636F73;
        v71 = 0xEB0000000070756FLL;
        break;
      case 7:
        v68 = 0x707954616964656DLL;
        v71 = 0xE900000000000065;
        break;
      case 8:
        OUTLINED_FUNCTION_11_68();
        OUTLINED_FUNCTION_10_71();
        break;
      case 9:
        OUTLINED_FUNCTION_11_68();
        OUTLINED_FUNCTION_12_68();
        break;
      default:
        break;
    }

    v72 = sub_1C6F765A4(v68, v71, &v80);

    *(v69 + 14) = v72;
    *(v69 + 22) = 2080;
    v73 = sub_1C6F765A4(v78, v7, &v80);

    *(v69 + 24) = v73;
    _os_log_impl(&dword_1C6F5C000, v66, v67, "Elected %ld assets for collectionType '%s', localIdentifier: %s", v69, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  return v21;
}

uint64_t sub_1C73B257C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  switch(*(v0 + 24))
  {
    case 1:
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_4_93();
      sub_1C73E6AE4(v2);
      OUTLINED_FUNCTION_5_87();
      MEMORY[0x1CCA5CD70](v1, v3);
      v4 = 0x6F6E207361682029;
      v5 = 0xEF73746573736120;
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();

      strcpy(v11, "Collection (");
      BYTE5(v11[1]) = 0;
      HIWORD(v11[1]) = -5120;
      v6 = [v2 localIdentifier];
      sub_1C755068C();
      OUTLINED_FUNCTION_15_72();
      OUTLINED_FUNCTION_6_96();

      MEMORY[0x1CCA5CD70](0x70797420666F2029, 0xEA00000000002065);
      v7 = [v2 description];
      sub_1C755068C();
      OUTLINED_FUNCTION_15_72();
      sub_1C73B2DF4(v2, v1, v3, 2);
      OUTLINED_FUNCTION_6_96();

      v4 = 0x70757320746F6E20;
      v5 = 0xEE00646574726F70;
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_4_93();
      sub_1C73E6AE4(v2);
      OUTLINED_FUNCTION_5_87();
      v8 = [v1 localIdentifier];
      sub_1C755068C();
      OUTLINED_FUNCTION_15_72();
      OUTLINED_FUNCTION_6_96();

      MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75ADD70);
      v9 = [v1 description];
      sub_1C755068C();
      OUTLINED_FUNCTION_15_72();
      sub_1C73B2DF4(v2, v1, v3, 3);
      OUTLINED_FUNCTION_6_96();

      return v11[0];
    default:
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_4_93();
      sub_1C73E6AE4(v2);
      OUTLINED_FUNCTION_5_87();
      MEMORY[0x1CCA5CD70](v1, v3);
      v4 = 0x6F6620746F6E2029;
      v5 = 0xEB00000000646E75;
LABEL_6:
      MEMORY[0x1CCA5CD70](v4, v5);
      return v11[0];
  }
}

uint64_t sub_1C73B2874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AD0](a1, WitnessTable);
}

uint64_t sub_1C73B28C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AC0](a1, WitnessTable);
}

uint64_t AssetElector.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDD28CE0;
  v4 = sub_1C754FF1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id AssetElector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void AssetElector.init()()
{
  v1 = qword_1EC21B180;
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  OUTLINED_FUNCTION_8_75();
  *(v0 + v1) = sub_1C755146C();
  sub_1C7551AAC();
  __break(1u);
}

id AssetElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetElector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C73B2B4C(uint64_t a1)
{
  v2 = qword_1EDD28CE0;
  v3 = sub_1C754FF1C();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_1EDD28CE8);
}

uint64_t sub_1C73B2BF4()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C73B2D08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C73B2D50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
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

uint64_t sub_1C73B2D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1C73B2DF4(void *a1, uint64_t a2, id a3, char a4)
{
  switch(a4)
  {
    case 0:
    case 1:

      break;
    case 2:

      break;
    case 3:
      MEMORY[0x1EEE66BB8](a1, a2, a3);
      break;
    default:
      return;
  }
}

void Random.Arc4Random.init(seed:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7576D70;
  *(inited + 32) = HIBYTE(a1);
  *(inited + 33) = BYTE6(a1);
  *(inited + 34) = BYTE5(a1);
  *(inited + 35) = BYTE4(a1);
  *(inited + 36) = BYTE3(a1);
  *(inited + 37) = BYTE2(a1);
  *(inited + 38) = BYTE1(a1);
  *(inited + 39) = a1;
  Random.Arc4Random.init(seed:)(inited, &v6);
  v5 = v7;
  *a2 = v6;
  *(a2 + 8) = v5;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = 256;
  v4[3] = 2 * v5 - 64;
  if (sub_1C70D07A4(v16, (v4 + 4), 256, 65280) != 256)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(a1 + 16);
  if (v6 - 257 >= 0xFFFFFFFFFFFFFF00)
  {
    v7 = 0;
    v8 = 32;
    while (1)
    {
      v9 = v8 - 32;
      v10 = v4[2];
      if (v10 <= v8 - 32)
      {
        break;
      }

      if (v9 % v6 >= *(a1 + 16))
      {
        goto LABEL_14;
      }

      v11 = *(v4 + v8);
      v12 = *(a1 + 32 + v9 % v6);
      v13 = v11 + v7;
      v7 += v11 + v12;
      if (v9 != (v13 + v12))
      {
        if (v10 <= v7)
        {
          goto LABEL_15;
        }

        v14 = *(v4 + v7 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C70E3D7C();
          v4 = v15;
        }

        *(v4 + v8) = v14;
        *(v4 + v7 + 32) = v11;
      }

      if (++v8 == 288)
      {

        *a2 = v4;
        *(a2 + 8) = 0;
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t Random.Arc4Random.init(seed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_1C754DFCC();
  v3 = v2;
  v5 = v4;
  v6 = v2 >> 8;
  v7 = v2 >> 16;
  v8 = v2 >> 24;
  v9 = HIDWORD(v2);
  v10 = v2 >> 40;
  v11 = HIWORD(v2);
  v12 = HIBYTE(v2);
  v13 = v4 >> 8;
  v18 = v4 >> 16;
  v19 = v4 >> 24;
  v20 = HIDWORD(v4);
  v21 = v4 >> 40;
  v22 = HIWORD(v4);
  v23 = HIBYTE(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7586700;
  *(inited + 32) = v3;
  *(inited + 33) = v6;
  *(inited + 34) = v7;
  *(inited + 35) = v8;
  *(inited + 36) = v9;
  *(inited + 37) = v10;
  *(inited + 38) = v11;
  *(inited + 39) = v12;
  *(inited + 40) = v5;
  *(inited + 41) = v13;
  *(inited + 42) = v18;
  *(inited + 43) = v19;
  *(inited + 44) = v20;
  *(inited + 45) = v21;
  *(inited + 46) = v22;
  *(inited + 47) = v23;
  Random.Arc4Random.init(seed:)(inited, &v26);
  v15 = sub_1C754DFFC();
  result = (*(*(v15 - 8) + 8))(a1, v15);
  v17 = v27;
  *a2 = v26;
  *(a2 + 8) = v17;
  return result;
}

uint64_t Random.__allocating_init(randomSeed:)(char a1)
{
  v2 = swift_allocObject();
  Random.init(randomSeed:)(a1);
  return v2;
}

vDSP_Length Random.sample(k:from:using:)(uint64_t a1, vDSP_Length a2, _BYTE *a3)
{
  v4 = a2;
  v80 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  if (v5 <= a1)
  {
    sub_1C75504FC();
    return v4;
  }

  v6 = v3;
  if (!*a3)
  {
    OUTLINED_FUNCTION_0_164();
    sub_1C75504FC();
    sub_1C73B3D7C(v3 + 24, sub_1C73B3864);
    swift_endAccess();
    sub_1C7033F04(a1, v4);
    v6 = v17;
    v19 = v18;
    if (v18)
    {
      sub_1C7551DEC();
      swift_unknownObjectRetain_n();
      v66 = swift_dynamicCastClass();
      if (!v66)
      {
        swift_unknownObjectRelease();
        v66 = MEMORY[0x1E69E7CC0];
      }

      v67 = *(v66 + 16);

      if (__OFSUB__(v19 >> 1, v6))
      {
        goto LABEL_79;
      }

      if (v67 == (v19 >> 1) - v6)
      {
        v13 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v13)
        {
          swift_unknownObjectRelease();
          return MEMORY[0x1E69E7CC0];
        }

        return v13;
      }

      swift_unknownObjectRelease();
    }

    sub_1C739C624();
    v13 = v20;
    swift_unknownObjectRelease();
    return v13;
  }

  v71 = a1;
  v73 = *(a2 + 16);
  if (*a3 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215010);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C755BAB0;
    OUTLINED_FUNCTION_0_164();
    if (!v5)
    {
      goto LABEL_76;
    }

    v21 = sub_1C73B45F0(v5);
    swift_endAccess();
    if (v21 < v5)
    {
      v76 = v4 + 32;
      *(v13 + 32) = *(v4 + 32 + 8 * v21);
      if (a1 <= 1)
      {
        sub_1C75504FC();
      }

      else
      {
        v22 = 4 * v5;
        sub_1C75504FC();
        v68 = v4 + 24;
        v69 = 4 * v5;
        do
        {
          v23 = sub_1C7550BBC();
          *(v23 + 16) = v5;
          v78 = v23;
          v24 = (v23 + 32);
          memset_pattern16((v23 + 32), &unk_1C757CC30, v22);
          v25 = 0;
          v4 = v5;
          v26 = *(v13 + 16);
          do
          {
            v27 = 0;
            v74 = v25 + 1;
            while (v26 != v27)
            {
              if (v27 >= *(v13 + 16))
              {
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
LABEL_75:
                __break(1u);
LABEL_76:
                __break(1u);
                goto LABEL_77;
              }

              v28 = v13;
              v4 = *(v13 + 8 * v27 + 32);
              v29 = *(v76 + 8 * v25);
              v30 = *(v4 + 16);
              if (v30 != *(v29 + 16))
              {
                goto LABEL_70;
              }

              sub_1C75504FC();
              sub_1C75504FC();
              if (v30)
              {
                v31 = sub_1C7550BBC();
                *(v31 + 16) = v30;
                bzero((v31 + 32), 4 * v30);
                v32 = *(v4 + 16);
              }

              else
              {
                v32 = 0;
                v31 = MEMORY[0x1E69E7CC0];
              }

              MEMORY[0x1CCA5FAD0](v29 + 32, 1, v4 + 32, 1, v31 + 32, 1, v32);

              v33 = *(v31 + 16);
              __C[0] = NAN;
              vDSP_svesq((v31 + 32), 1, __C, v33);
              v34 = __C[0];

              v4 = *(v78 + 16);
              if (v25 >= v4)
              {
                goto LABEL_71;
              }

              if (v34 < v24[v25])
              {
                v24[v25] = v34;
              }

              ++v27;
              v13 = v28;
            }

            ++v25;
          }

          while (v74 != v73);
          __C[0] = NAN;
          sub_1C75504FC();
          vDSP_sve(v24, 1, __C, v4);
          v35 = __C[0];

          OUTLINED_FUNCTION_0_164();
          v36 = 0.0;
          v37 = vcvts_n_f32_u32(sub_1C73B4538(0x1000001uLL), 0x18uLL) + 0.0;
          swift_endAccess();
          v38 = 0;
          v5 = v73;
          do
          {
            if (v73 == v38)
            {

              v43 = *(v13 + 16);
              goto LABEL_35;
            }

            if (v38 >= *(v78 + 16))
            {
              goto LABEL_75;
            }

            v39 = v38 + 1;
            v36 = v36 + *(v78 + 4 * v38++ + 32);
          }

          while ((v35 * v37) > v36);

          v40 = *(v68 + 8 * v39);
          v41 = *(v13 + 16);
          v42 = *(v13 + 24);
          v43 = v41 + 1;
          sub_1C75504FC();
          if (v41 >= v42 >> 1)
          {
            sub_1C6FB2DBC();
            v13 = v44;
          }

          *(v13 + 16) = v43;
          *(v13 + 8 * v41 + 32) = v40;
LABEL_35:
          v22 = v69;
        }

        while (v43 < v71);
      }

      return v13;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_1C75504FC();
  sub_1C7033F04(a1, v4);
  v9 = v8;
  v11 = v10;
  if ((v10 & 1) == 0)
  {
LABEL_5:
    sub_1C739C624();
    v13 = v12;
    v14 = v71;
    v15 = v73;
    goto LABEL_43;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v45 = swift_dynamicCastClass();
  if (!v45)
  {
    swift_unknownObjectRelease();
    v45 = MEMORY[0x1E69E7CC0];
  }

  v46 = *(v45 + 16);

  if (__OFSUB__(v11 >> 1, v9))
  {
    goto LABEL_78;
  }

  if (v46 != (v11 >> 1) - v9)
  {
LABEL_80:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v13 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v14 = v71;
  v15 = v73;
  if (v13)
  {
    goto LABEL_44;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_43:
  swift_unknownObjectRelease();
LABEL_44:
  if (v15 != v14)
  {
    v70 = v4 + 32;
    v72 = v6;
    do
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_72;
      }

      v77 = v13;
      v47 = v14 + 1;
      OUTLINED_FUNCTION_0_164();
      v75 = v14;
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      v4 = v48;
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      v50 = v49;
      sub_1C73B442C();
      v51 = v14;
      OUTLINED_FUNCTION_2_115();
      v54 = v53 | ((v52 & 0xFFFFFFFFFFFFFF00 | v50) << 8);
      v55 = v54 * (v14 + 1);
      v56 = (v54 * (v14 + 1)) >> 64;
      if (v51 >= v54 * v47)
      {
        v57 = v73;
        if (~v51 % v47 <= v55)
        {
          goto LABEL_53;
        }

        do
        {
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          v4 = v58;
          sub_1C73B442C();
          sub_1C73B442C();
          v60 = v59;
          sub_1C73B442C();
          OUTLINED_FUNCTION_1_123();
          v63 = v62 | ((v61 & 0xFFFFFFFFFFFFFF00 | v60) << 8);
        }

        while (~v51 % v47 > v63 * v47);
        v56 = (v63 * v47) >> 64;
        v57 = v73;
        v51 = v75;
      }

      else
      {
        v57 = v73;
      }

      v13 = v77;
LABEL_53:
      swift_endAccess();
      if (v56 >= v71)
      {
        v6 = v72;
      }

      else
      {
        v6 = v72;
        if (v51 >= v57)
        {
          goto LABEL_73;
        }

        v64 = *(v70 + 8 * v51);
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C70E3DC4();
          v13 = v65;
        }

        if (v56 >= *(v13 + 16))
        {
          goto LABEL_74;
        }

        *(v13 + 8 * v56 + 32) = v64;
      }

      v14 = v47;
    }

    while (v47 != v57);
  }

  return v13;
}

void sub_1C73B3864(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > a1)
      {
        if (v5 > a2)
        {
          v7 = *(v4 + 32 + 8 * a1);
          v8 = *(v4 + 32 + 8 * a2);
          sub_1C75504FC();
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C7422CCC();
            v4 = v9;
          }

          if (*(v4 + 16) > a1)
          {
            *(v4 + 32 + 8 * a1) = v8;

            if (*(v4 + 16) > a2)
            {
              *(v4 + 32 + 8 * a2) = v7;

              *v2 = v4;
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }
}

void sub_1C73B3944(uint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    v5 = *v2;
    v6 = *v2 & 0xC000000000000001;
    sub_1C6FB6330(a1, v6 == 0, *v2);
    if (v6)
    {
      v7 = MEMORY[0x1CCA5DDD0](a1, v5);
    }

    else
    {
      v7 = *(v5 + 8 * a1 + 32);
    }

    v8 = v7;
    sub_1C6FB6330(a2, v6 == 0, v5);
    if (v6)
    {
      v9 = MEMORY[0x1CCA5DDD0](a2, v5);
    }

    else
    {
      v9 = *(v5 + 8 * a2 + 32);
    }

    v10 = v9;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = sub_1C70E43B4(v5);
      v11 = (v5 >> 62) & 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v12 = v5 & 0xFFFFFFFFFFFFFF8;
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v10;

    if ((v5 & 0x8000000000000000) != 0 || v11)
    {
      v5 = sub_1C70E43B4(v5);
      v12 = v5 & 0xFFFFFFFFFFFFFF8;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_15:
        if (*(v12 + 16) > a2)
        {
          v14 = v12 + 8 * a2;
          v15 = *(v14 + 32);
          *(v14 + 32) = v8;

          *v2 = v5;
          return;
        }

LABEL_21:
        __break(1u);
        return;
      }
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_21;
  }
}

unint64_t sub_1C73B3A80(unint64_t result, unint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v7 = *(v4 + 32 + 8 * a2);
  v8 = *(v4 + 32 + 8 * result);
  v9 = v7;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if ((result & 1) == 0)
  {
    result = sub_1C7423D10();
    v4 = result;
    *v2 = result;
  }

  if (*(v4 + 16) <= v3)
  {
    goto LABEL_17;
  }

  v10 = v4 + 8 * v3;
  v11 = *(v10 + 32);
  *(v10 + 32) = v9;

  sub_1C755193C();
  v12 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v12;
  if ((result & 1) == 0)
  {
    result = sub_1C7423D10();
    v12 = result;
    *v2 = result;
  }

  if (*(v12 + 16) <= a2)
  {
    goto LABEL_18;
  }

  v13 = v12 + 8 * a2;
  v14 = *(v13 + 32);
  *(v13 + 32) = v8;

  return sub_1C755193C();
}

void sub_1C73B3BAC(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for PromptSuggestion(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = *v2;
      v13 = *(*v2 + 16);
      if (v13 > a1)
      {
        v18 = v2;
        v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v15 = *(v9 + 72);
        sub_1C71592A8(v12 + v14 + v15 * a1, &v17 - v10);
        if (v13 > a2)
        {
          sub_1C71592A8(v12 + v14 + v15 * a2, v7);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C7422EAC();
            v12 = v16;
          }

          if (*(v12 + 16) > a1)
          {
            sub_1C7159BA8(v7, v12 + v14 + v15 * a1);
            if (*(v12 + 16) > a2)
            {
              sub_1C7159BA8(v11, v12 + v14 + v15 * a2);
              *v18 = v12;
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }
}

unint64_t sub_1C73B3D7C(unint64_t result, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(*v2 + 16);
  v15 = v3 - 2;
  if (v3 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v17 = v4;
      v18 = v3;
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      sub_1C73B442C();
      v6 = v5;
      sub_1C73B442C();
      OUTLINED_FUNCTION_2_115();
      result = v8 | ((v7 & 0xFFFFFFFFFFFFFF00 | v6) << 8);
      v9 = (result * v3) >> 64;
      if (v3 > result * v3)
      {
        v10 = -v3 % v3;
        if (v10 > result * v3)
        {
          do
          {
            sub_1C73B442C();
            sub_1C73B442C();
            sub_1C73B442C();
            sub_1C73B442C();
            sub_1C73B442C();
            sub_1C73B442C();
            sub_1C73B442C();
            v12 = v11;
            sub_1C73B442C();
            v3 = v18;
            OUTLINED_FUNCTION_1_123();
            result = v14 | ((v13 & 0xFFFFFFFFFFFFFF00 | v12) << 8);
          }

          while (v10 > result * v18);
          v9 = (result * v18) >> 64;
        }
      }

      if (__OFADD__(v17, v9))
      {
        break;
      }

      --v3;
      result = a2(v17, v17 + v9);
      v4 = v17 + 1;
      if (v17 == v15)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Random.SamplerKind.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t Random.init(randomSeed:)(char a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = a1;
  Random.Arc4Random.init(seed:)(inited, &v6);
  v4 = v7;
  *(v1 + 24) = v6;
  *(v1 + 32) = v4;
  return v1;
}

void Random.uniform(length:in:)(uint64_t a1@<X0>, uint64_t *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  if (a1 < 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (a1)
  {
    v8 = sub_1C7550BBC();
    *(v8 + 16) = a1;
    bzero((v8 + 32), 4 * a1);
    swift_beginAccess();
    v9 = 0;
    while (1)
    {
      sub_1C73B427C(a3, a4);
      if (v9 >= *(v8 + 16))
      {
        break;
      }

      *(v8 + 4 * v9++ + 32) = v10;
      if (a1 == v9)
      {
        swift_endAccess();
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_8:
  *a2 = v8;
}

void sub_1C73B427C(float a1, float a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2 - a1;
  if (COERCE_INT(fabs(a2 - a1)) > 2139095039)
  {
LABEL_6:
    __break(1u);
    return;
  }

    ;
  }
}

void sub_1C73B42F8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 != a2)
  {
    v7 = *v2;
    v8 = *(*v2 + 16);
    if (v8 <= a1)
    {
      __break(1u);
    }

    else
    {
      v3 = a2;
      if (v8 > a2)
      {
        v4 = a1;
        v5 = *(v7 + 32 + a1);
        v6 = *(v7 + 32 + a2);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_5:
          v9 = v7 + 32;
          *(v9 + v4) = v6;
          *(v9 + v3) = v5;
          *v2 = v7;
          return;
        }

LABEL_9:
        sub_1C70E3D7C();
        v7 = v10;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

Swift::UInt64 __swiftcall Random.Arc4Random.next()()
{
  sub_1C73B442C();
  sub_1C73B442C();
  sub_1C73B442C();
  sub_1C73B442C();
  sub_1C73B442C();
  sub_1C73B442C();
  sub_1C73B442C();
  v1 = v0;
  sub_1C73B442C();
  OUTLINED_FUNCTION_2_115();
  return v3 | ((v2 & 0xFFFFFFFFFFFFFF00 | v1) << 8);
}

void sub_1C73B442C()
{
  v1 = v0[8] + 1;
  v0[8] = v1;
  if (*(*v0 + 16) <= v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = *(*v0 + v1 + 32) + v0[9];
  v0[9] = v3;
  sub_1C73B42F8(v1, v3);
  v4 = *(*v0 + 16);
  if (v4 <= v2)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 <= (*(*v0 + 32 + v3) + *(*v0 + 32 + v2)))
  {
LABEL_9:
    __break(1u);
  }
}

uint64_t Random.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C73B4538(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v3 = Random.Arc4Random.next()() * result;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      while (v4 > v3)
      {
        sub_1C73B442C();
        sub_1C73B442C();
        sub_1C73B442C();
        sub_1C73B442C();
        sub_1C73B442C();
        v6 = v5;
        sub_1C73B442C();
        v8 = v7;
        sub_1C73B442C();
        v10 = v9;
        sub_1C73B442C();
        v3 = (v11 | (((v6 << 16) | (v8 << 8) | v10) << 8)) * v2;
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::UInt64 sub_1C73B45F0(Swift::UInt64 result)
{
  if (result)
  {
    v1 = result;
    v2 = Random.Arc4Random.next()();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          sub_1C73B442C();
          v6 = v5;
          sub_1C73B442C();
          OUTLINED_FUNCTION_2_115();
          v9 = v8 | ((v7 & 0xFFFFFFFFFFFFFF00 | v6) << 8);
        }

        while (v4 > v9 * v1);
        return (v9 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C73B46DC()
{
  result = qword_1EC21B188;
  if (!qword_1EC21B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B188);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Random.SamplerKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

void static MemoryCreationAvailabilityMonitor.gmAvailabilityPolicyForMemoryCreation()()
{
  v1 = sub_1C754EA7C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  static MemoryCreationAvailabilityMonitor.gmAvailability()(v6 - v5);
  if (!v0)
  {
    sub_1C754EA3C();
    (*(v3 + 8))(v7, v1);
  }
}

void *sub_1C73B49AC@<X0>(void *a1@<X8>)
{
  result = sub_1C73B4A08();
  *a1 = result;
  return result;
}

void sub_1C73B49D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C6F73150(v1);
}

void *sub_1C73B4A08()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_72();
  sub_1C6F65C28(v1, v2);
  sub_1C754E37C();

  v3 = *(v0 + 96);
  v4 = v3;
  return v3;
}

void sub_1C73B4AA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = a2;
  v3 = a2;
}

uint64_t MemoryCreationAvailabilityMonitorObservable.__allocating_init(configuration:photoLibrary:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  MemoryCreationAvailabilityMonitorObservable.init(configuration:photoLibrary:)(a1, a2);
  return v4;
}

uint64_t MemoryCreationAvailabilityMonitor.register<A>(newListener:)(void *a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  OUTLINED_FUNCTION_3_16();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = v2;
  v6[4] = a1;
  OUTLINED_FUNCTION_30();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C73B61C4;
  *(v7 + 24) = v6;
  v12[4] = sub_1C6F669D4;
  v12[5] = v7;
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_3_103();
  v12[2] = v8;
  v12[3] = &block_descriptor_37;
  v9 = _Block_copy(v12);
  v10 = v2;
  OUTLINED_FUNCTION_24_2();
  swift_unknownObjectRetain();

  dispatch_sync(v5, v9);
  _Block_release(v9);
  OUTLINED_FUNCTION_60_21();
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    [a1 stateDidChangeWithMonitor_];
  }

  return result;
}

uint64_t sub_1C73B4D20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    v7 = sub_1C73B4E7C;
  }

  else
  {
    v7 = sub_1C73B4E20;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C73B4E20()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C73B4E7C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C73B4ED8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_72_19();
  OUTLINED_FUNCTION_73_20(v4);
  OUTLINED_FUNCTION_24_2();

  v5 = sub_1C7550D0C();
  OUTLINED_FUNCTION_3_16();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v1;
  OUTLINED_FUNCTION_69_22(v6, v8, v9, v10, v6);
}

uint64_t sub_1C73B4F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1C7550D1C();
  *(v4 + 24) = sub_1C7550D0C();
  v6 = sub_1C7550C8C();

  return MEMORY[0x1EEE6DFA0](sub_1C73B502C, v6, v5);
}

uint64_t sub_1C73B502C()
{
  OUTLINED_FUNCTION_42();

  MemoryCreationAvailabilityMonitor.stopPolling()();
  OUTLINED_FUNCTION_43();

  return v0();
}

Swift::Void __swiftcall MemoryCreationAvailabilityMonitor.stopPolling()()
{
  v1 = *&v0[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  OUTLINED_FUNCTION_30();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C73B6274;
  *(v3 + 24) = v2;
  v8[4] = sub_1C6F669DC;
  v8[5] = v3;
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_3_103();
  v8[2] = v4;
  v8[3] = &block_descriptor_36_0;
  v5 = _Block_copy(v8);
  v6 = v0;

  dispatch_sync(v1, v5);
  _Block_release(v5);
  OUTLINED_FUNCTION_60_21();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1C73B51C4()
{
  OUTLINED_FUNCTION_42();
  sub_1C7550D1C();
  *(v0 + 24) = sub_1C7550D0C();
  OUTLINED_FUNCTION_24_2();
  v2 = sub_1C7550C8C();

  return MEMORY[0x1EEE6DFA0](sub_1C73B5250, v2, v1);
}

uint64_t sub_1C73B5250()
{
  OUTLINED_FUNCTION_42();

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_52_3(v1);

  return MemoryCreationAvailabilityMonitor.updateMemoryCreationAvailability()();
}

uint64_t sub_1C73B52E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v4;
  *(v2 + 272) = v0;

  if (v0)
  {
    v5 = sub_1C73B5578;
  }

  else
  {
    v5 = sub_1C73B53E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C73B53E8()
{
  v25 = v1;
  v2 = *(v1 + 264);
  memcpy(v23, (v1 + 88), 0x41uLL);
  memcpy(__dst, (v1 + 88), sizeof(__dst));
  sub_1C73B5918(__dst);
  if (v2)
  {
    v3 = *(v1 + 264);
    v4 = OUTLINED_FUNCTION_141();
    sub_1C73B5A80(v4);
  }

  v5 = *(v1 + 176);
  v6 = *(v1 + 82);
  v7 = *(v1 + 232);
  v8 = *(v1 + 81);
  v9 = *(v1 + 200);
  *&__dst[8] = *(v1 + 184);
  *&__dst[24] = v9;
  v10 = *(v1 + 216);
  v11 = *(v1 + 180);
  v12 = *(v1 + 182);
  __dst[0] = v8;
  __dst[7] = v12;
  *&__dst[5] = v11;
  *&__dst[1] = v5;
  *&__dst[40] = v10;
  *&__dst[56] = v7;
  __dst[64] = v6;
  if ((static MemoryCreationAvailabilityState.== infix(_:_:)(v23, __dst, *&v10) & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = *(v1 + 240);
  if (!v2)
  {
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v13 || (v14 = *(v1 + 264), sub_1C6F65BE8(0, &qword_1EDD06968), v15 = v14, v16 = v13, OUTLINED_FUNCTION_141(), v17 = sub_1C75513EC(), v13, v15, (v17 & 1) == 0))
  {
LABEL_9:
    sub_1C73B627C();
  }

LABEL_10:
  v18 = *(v1 + 264);
  v20 = *(v1 + 240);
  v19 = *(v1 + 248);
  sub_1C73B66D0();

  OUTLINED_FUNCTION_43();

  return v21();
}

uint64_t sub_1C73B5578()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 248);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C73B55D8()
{
  OUTLINED_FUNCTION_10_72();
  sub_1C6F65C28(v0, v1);
  return sub_1C754E36C();
}

uint64_t MemoryCreationAvailabilityMonitorObservable.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence43MemoryCreationAvailabilityMonitorObservable___observationRegistrar;
  sub_1C754E39C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t MemoryCreationAvailabilityMonitorObservable.__deallocating_deinit()
{
  MemoryCreationAvailabilityMonitorObservable.deinit();

  return swift_deallocClassInstance();
}

uint64_t MemoryCreationAvailabilityMonitor.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t MemoryCreationAvailabilityMonitor.Configuration.stateUpdatePollingFrequencySeconds.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MemoryCreationAvailabilityMonitor.Configuration(0) + 20);
  sub_1C754FFEC();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MemoryCreationAvailabilityMonitor.Configuration.stateUpdatePollingLeewaySeconds.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MemoryCreationAvailabilityMonitor.Configuration(0) + 24);
  sub_1C754FFEC();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1C73B5918(const void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  memcpy((v4 + 24), a1, 0x41uLL);
  OUTLINED_FUNCTION_30();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C73B8E64;
  *(v5 + 24) = v4;
  v11[4] = sub_1C6F669DC;
  v11[5] = v5;
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_3_103();
  v11[2] = v6;
  v11[3] = &block_descriptor_127;
  v7 = _Block_copy(v11);
  v8 = v1;

  dispatch_sync(v3, v7);
  _Block_release(v7);
  OUTLINED_FUNCTION_60_21();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C73B5A50(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1C73B5A80(v1);
}

uint64_t sub_1C73B5A80(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  OUTLINED_FUNCTION_30();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  OUTLINED_FUNCTION_30();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C73B8D60;
  *(v5 + 24) = v4;
  v12[4] = sub_1C6F669DC;
  v12[5] = v5;
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_3_103();
  v12[2] = v6;
  v12[3] = &block_descriptor_92;
  v7 = _Block_copy(v12);
  v8 = a1;

  v9 = v1;

  dispatch_sync(v3, v7);

  _Block_release(v7);
  OUTLINED_FUNCTION_60_21();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1C73B5BB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__processingAvailability);
  *(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__processingAvailability) = a2;
  v2 = a2;
}

uint64_t sub_1C73B5C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_1C7550D5C();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = a3;
    sub_1C7293D70();
  }

  return result;
}

uint64_t sub_1C73B5D28()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD0FB68 != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v1 = sub_1C754FF1C();
  __swift_project_value_buffer(v1, qword_1EDD0FB70);
  v2 = sub_1C754FEEC();
  sub_1C75511BC();
  v3 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_96_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v5, v6, "GMS availability updated, updating MC availability status!");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_1C73B5E48;

  return MemoryCreationAvailabilityMonitor.updateMemoryCreationAvailability()();
}

uint64_t sub_1C73B5E48()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C73B5F28(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__polling) = 0;
  v2 = OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_updateTimer;
  if (*(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_updateTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C75512EC();
    swift_unknownObjectRelease();
  }

  *(a1 + v2) = 0;
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__gmsAvailabilityNotifications;
  if (*(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__gmsAvailabilityNotifications))
  {

    sub_1C754EA1C();
  }

  *(a1 + v3) = 0;
}

id MemoryCreationAvailabilityMonitor.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217ED8);
  sub_1C755128C();

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1C73B6090@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__gmsAvailabilityNotifications);
  if (v3)
  {

    sub_1C754EA1C();
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_1C73B61E0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_66_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_74(v3);

  return sub_1C73B4F94(v5, v6, v7, v1);
}

uint64_t sub_1C73B627C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B1D0);
  sub_1C755128C();
  result = sub_1C6FB6304();
  if (!result)
  {
  }

  v2 = result;
  if (result >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1CCA5DDD0](i);
      }

      else
      {
        v4 = *(v5 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v4 stateDidChangeWithMonitor_];
      swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

void sub_1C73B6388(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__listeners) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B1D8);
  v4 = sub_1C7550B5C();

  *a2 = v4;
}

uint64_t sub_1C73B6408()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 272) = v4;
  *(v2 + 280) = v0;

  if (v0)
  {
    v5 = sub_1C73B6674;
  }

  else
  {
    v5 = sub_1C73B6510;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C73B6510()
{
  v17 = v0;
  memcpy((v0 + 160), (v0 + 88), 0x41uLL);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  v4 = OUTLINED_FUNCTION_40_40();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 240);
  if (v6)
  {
    OUTLINED_FUNCTION_13_3();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    memcpy(__dst, (v0 + 160), sizeof(__dst));
    MemoryCreationAvailabilityState.description.getter();
    sub_1C6F765A4(v10, v11, &v15);
    OUTLINED_FUNCTION_300_0();

    *(v8 + 4) = v1;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "After processing checks, MC is %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v12 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v12);
  }

  else
  {
  }

  memcpy(*(v0 + 232), (v0 + 160), 0x41uLL);
  OUTLINED_FUNCTION_116();

  return v13();
}

uint64_t sub_1C73B6674()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C73B66D0()
{
  v1 = *&v0[OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C73B8D68;
  *(v3 + 24) = v2;
  v8[4] = sub_1C6F669DC;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C6F66984;
  v8[3] = &block_descriptor_102_0;
  v4 = _Block_copy(v8);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C73B6824(void (**a1)(char *, uint64_t))
{
  v2 = sub_1C755001C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C755006C();
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C754FFEC();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C755009C();
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v58 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v52 - v13;
  v14 = sub_1C75512BC();
  v66 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_updateTimer;
  if (*(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_updateTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C75512EC();
    swift_unknownObjectRelease();
  }

  *(a1 + v17) = 0;
  result = swift_unknownObjectRelease();
  if (*(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor__polling) == 1)
  {
    v19 = sub_1C6F65BE8(0, &qword_1EDD0CE18);
    ObjectType = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_workQueue);
    v55 = v19;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F65C28(&unk_1EDD0CE20, MEMORY[0x1E69E80B0]);
    v53 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B1C8);
    v65 = v17;
    v20 = a1;
    v21 = v5;
    v22 = v6;
    sub_1C6F65C70(&qword_1EDD0CF10, &qword_1EC21B1C8);
    v23 = v21;
    v24 = v65;
    sub_1C75515FC();
    v25 = sub_1C75512CC();
    v66[1](v16, v14);
    *(v20 + v24) = v25;
    result = swift_unknownObjectRelease();
    if (*(v20 + v24))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = v58;
      sub_1C755007C();
      v27 = v20 + OBJC_IVAR____TtC18PhotosIntelligence33MemoryCreationAvailabilityMonitor_configuration;
      v28 = type metadata accessor for MemoryCreationAvailabilityMonitor.Configuration(0);
      v29 = v27 + *(v28 + 20);
      v66 = v20;
      v30 = v59;
      MEMORY[0x1CCA5C5D0](v26, v29);
      v31 = *(v60 + 8);
      v32 = v26;
      v33 = v61;
      v31(v32, v61);
      v34 = *MEMORY[0x1E69E7F40];
      v58 = v22;
      v55 = v23;
      v35 = v62;
      v36 = v63;
      v37 = *(v63 + 104);
      v60 = v2;
      v38 = v64;
      v37(v62, v34, v64);
      MEMORY[0x1CCA5D840](v30, v35, v27 + *(v28 + 24), ObjectType);
      swift_unknownObjectRelease();
      v39 = v35;
      v40 = v60;
      (*(v36 + 8))(v39, v38);
      v41 = v55;
      v42 = v58;
      v43 = v30;
      v44 = v66;
      v45 = v33;
      v46 = v53;
      result = (v31)(v43, v45);
      v47 = v65;
      if (*(v44 + v65))
      {
        swift_getObjectType();
        v48 = swift_allocObject();
        *(v48 + 16) = v44;
        aBlock[4] = sub_1C73B8D70;
        aBlock[5] = v48;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C6FD8F68;
        aBlock[3] = &block_descriptor_108;
        v49 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v50 = v44;
        v51 = v56;
        sub_1C755003C();
        sub_1C73B725C();
        sub_1C75512DC();
        _Block_release(v49);
        swift_unknownObjectRelease();
        (*(v46 + 8))(v41, v40);
        (*(v57 + 8))(v51, v42);

        if (*(v44 + v47))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1C75512FC();
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C73B6EB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_1C7294014();
}

uint64_t sub_1C73B6FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C73B6FD8, 0, 0);
}

uint64_t sub_1C73B6FD8()
{
  OUTLINED_FUNCTION_42();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_52_3(v2);

    return MemoryCreationAvailabilityMonitor.updateMemoryCreationAvailability()();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_43();

    return v4();
  }
}

uint64_t sub_1C73B70C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = sub_1C73B7200;
  }

  else
  {

    v7 = sub_1C73B71C8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C73B71C8()
{
  **(v0 + 40) = *(v0 + 56) == 0;
  OUTLINED_FUNCTION_43();
  return v1();
}

uint64_t sub_1C73B7200()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C73B725C()
{
  sub_1C755001C();
  sub_1C6F65C28(&qword_1EDD0D0C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0);
  sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0);
  return sub_1C75515FC();
}

uint64_t sub_1C73B7334()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1C73B7A4C;
  }

  else
  {
    v5 = sub_1C73B7438;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C73B7438()
{
  v65 = v0;
  v1 = *(v0 + 144);
  if ([v1 wasComputed])
  {
    if ([v1 isAvailable])
    {
      if (qword_1EDD0FB68 != -1)
      {
        OUTLINED_FUNCTION_0_165();
        swift_once();
      }

      v2 = sub_1C754FF1C();
      __swift_project_value_buffer(v2, qword_1EDD0FB70);
      v3 = sub_1C754FEEC();
      v4 = sub_1C75511BC();
      v5 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v5, v6))
      {
        OUTLINED_FUNCTION_96_0();
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1C6F5C000, v3, v4, "MC is available!", v7, 2u);
        v8 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x1CCA5F8E0](v8);
      }

      OUTLINED_FUNCTION_14_61();
      v9 = -64;
    }

    else
    {
      v18 = [v1 hasConsistentMediaAnalysisImageVersion];
      v19 = [v1 photosKnowledgeGraphIsReady];
      v20 = [v1 vuIndexIsFullClustered];
      v50 = [v1 libraryHasEnoughCuratedAssets];
      [v1 fractionOfCuratedAssetsWithCaptions];
      v22 = v21;
      [v1 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex];
      v24 = v23;
      [v1 fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
      v26 = v25;
      v52 = v1;
      [v1 fractionOfCuratedAssetsIndexedInVUClustering];
      v28 = v27;
      LOBYTE(v53) = 0;
      LOBYTE(v54) = 0;
      LOBYTE(v56) = 0;
      if (qword_1EDD0FB68 != -1)
      {
        OUTLINED_FUNCTION_0_165();
        swift_once();
      }

      v9 = 0x80;
      v29 = sub_1C754FF1C();
      __swift_project_value_buffer(v29, qword_1EDD0FB70);
      v30 = sub_1C754FEEC();
      v31 = sub_1C75511BC();
      if (os_log_type_enabled(v30, v31))
      {
        v32.i16[0] = v18;
        v32.i16[1] = v19;
        v32.i16[2] = v20;
        v32.i16[3] = v50;
        v33 = vmvn_s8(v32);
        OUTLINED_FUNCTION_13_3();
        v48 = v20;
        v34 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v49 = v19;
        v35 = v18;
        v36 = swift_slowAlloc();
        v53 = v36;
        *v34 = 136315138;
        OUTLINED_FUNCTION_70_19();
        v54 = v56;
        v55 = v57;
        OUTLINED_FUNCTION_51_25();
        LOBYTE(v56) = 0;
        v37 = vand_s8(v33, 0x1000100010001);
        *(&v56 + 1) = vuzp1_s8(v37, v37).u32[0];
        v57 = v22;
        v58 = 0;
        v59 = v24;
        v60 = 0;
        v61 = v26;
        v62 = 0;
        v63 = v28;
        v64 = 0;
        countAndFlagsBits = MemoryCreationAvailabilityState.ProcessingIncompleteReasons.description()()._countAndFlagsBits;
        MEMORY[0x1CCA5CD70](countAndFlagsBits);

        v39 = sub_1C6F765A4(v54, v55, &v53);
        v40 = v50;

        *(v34 + 4) = v39;
        _os_log_impl(&dword_1C6F5C000, v30, v31, "Memory Creation required process is not yet complete: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        v18 = v35;
        v19 = v49;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v20 = v48;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {

        v40 = v50;
      }

      v41 = *(v0 + 152);
      v42 = 0x100000000;
      if (v40)
      {
        v42 = 0;
      }

      v43 = 0x1000000;
      if (v20)
      {
        v43 = 0;
      }

      v44 = 0x10000;
      if (v19)
      {
        v44 = 0;
      }

      v45 = 256;
      if (v18)
      {
        v45 = 0;
      }

      *v41 = v44 | v45 | v43 | v42;
      v41[1] = v22;
      v41[2] = 0;
      v41[3] = v24;
      v41[4] = 0;
      v41[5] = v26;
      v41[6] = 0;
      v41[7] = v28;
      v1 = v52;
    }
  }

  else
  {
    LOBYTE(v53) = 1;
    LOBYTE(v54) = 1;
    LOBYTE(v56) = 1;
    if (qword_1EDD0FB68 != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v10 = sub_1C754FF1C();
    __swift_project_value_buffer(v10, qword_1EDD0FB70);
    v11 = sub_1C754FEEC();
    v12 = sub_1C75511BC();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_13_3();
      v51 = v1;
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v14 = swift_slowAlloc();
      v53 = v14;
      *v13 = 136315138;
      OUTLINED_FUNCTION_70_19();
      v54 = v56;
      v55 = v57;
      OUTLINED_FUNCTION_51_25();
      LOBYTE(v56) = 0;
      *(&v56 + 1) = 33686018;
      v57 = 0;
      v58 = 1;
      v59 = 0;
      v60 = 1;
      v61 = 0;
      v62 = 1;
      v63 = 0;
      v64 = 1;
      v15 = MemoryCreationAvailabilityState.ProcessingIncompleteReasons.description()()._countAndFlagsBits;
      MEMORY[0x1CCA5CD70](v15);

      v16 = sub_1C6F765A4(v54, v55, &v53);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_1C6F5C000, v11, v12, "Memory Creation is unavailable: %s\n\nProcessing availability has not been computed yet.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v1 = v51;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v17 = *(v0 + 152);
    *v17 = xmmword_1C7586880;
    *(v17 + 16) = 1;
    *(v17 + 24) = 0;
    *(v17 + 32) = 1;
    *(v17 + 40) = 0;
    *(v17 + 48) = 1;
    *(v17 + 56) = 0;
    v9 = -127;
  }

  *(*(v0 + 152) + 64) = v9;
  OUTLINED_FUNCTION_116();

  return v46(v1);
}

uint64_t sub_1C73B7A4C()
{
  OUTLINED_FUNCTION_49_0();
  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v0();
}

BOOL sub_1C73B7AB0()
{
  v0 = sub_1C754E9AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69A1038], v0);
  sub_1C6F65C28(&unk_1EDD10090, MEMORY[0x1E69A1168]);
  v4 = sub_1C755063C();
  (*(v1 + 8))(v3, v0);
  return (v4 & 1) == 0;
}

BOOL sub_1C73B7BFC()
{
  v0 = sub_1C754E97C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69A0F20], v0);
  sub_1C6F65C28(&qword_1EDD0CB28, MEMORY[0x1E69A0F90]);
  v4 = sub_1C755063C();
  (*(v1 + 8))(v3, v0);
  return (v4 & 1) == 0;
}

uint64_t *sub_1C73B7D48(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1C6FF5694(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1C6FF5698(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static MemoryCreationAvailabilityMonitor.shouldShowMemoryCreationInWhatsNew()()
{
  static MemoryCreationAvailabilityMonitor.generateAvailabilityStateDueToGMSAvailability()(&v5);
  v0 = v10 | v8;
  if ((~v5 & 0xFE00FE00000000FELL) != 0 || ((v6 & 0xFFFFFFFFFFFFFFFELL) == 0xFFE ? (v1 = v0 > 1) : (v1 = 1), !v1 ? (v2 = v12 >= 2u) : (v2 = 1), v2))
  {
    switch(v12 >> 6)
    {
      case 1:
      case 2:
        goto LABEL_11;
      case 3:
        if (v12 != 192)
        {
          goto LABEL_11;
        }

        v3 = v0 | v5 | v6 | v7 | v9 | v11 | (*(&v5 + 11) << 24) | (HIBYTE(v5) << 56) | (BYTE10(v5) << 16) | (BYTE9(v5) << 8) | BYTE8(v5);
        if (v3)
        {
          goto LABEL_11;
        }

        break;
      default:
        LOBYTE(v3) = (((v5 & 0x1000001010100) != 0) | v5 | BYTE9(v5) | BYTE10(v5)) ^ 1;
        break;
    }
  }

  else
  {
LABEL_11:
    LOBYTE(v3) = 1;
  }

  return v3 & 1;
}

double static MemoryCreationAvailabilityMonitor.availabilityState(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x616974696E696E75 && a2 == 0xED000064657A696CLL;
  if (v6 || (OUTLINED_FUNCTION_42_0() & 1) != 0)
  {
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
LABEL_7:
    v8 = -64;
LABEL_8:
    *(a3 + 64) = v8;
    return result;
  }

  v9 = a1 == 0x626967696C656E69 && a2 == 0xEA0000000000656CLL;
  if (v9 || (OUTLINED_FUNCTION_42_0() & 1) != 0)
  {
    *(a3 + 32) = 0;
    *(a3 + 48) = 0;
    *(a3 + 64) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0x101010101;
  }

  else
  {
    v10 = a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62;
    if (v10 || (OUTLINED_FUNCTION_42_0() & 1) != 0)
    {
      *a3 = 0x2000000010100;
      *(a3 + 16) = 0;
      *(a3 + 32) = 0;
      *(a3 + 48) = 0;
      v8 = 64;
      goto LABEL_8;
    }

    v11 = a1 == 0xD000000000000014 && 0x80000001C7598E90 == a2;
    if (v11 || (OUTLINED_FUNCTION_42_0() & 1) != 0)
    {
      *&result = 0x202020201;
      *a3 = xmmword_1C7586890;
      *(a3 + 16) = 1;
      *(a3 + 24) = 0;
      *(a3 + 32) = 1;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
      *(a3 + 56) = 0;
      v8 = -127;
      goto LABEL_8;
    }

    v12 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
    if (v12 || (OUTLINED_FUNCTION_42_0() & 1) != 0)
    {
      result = OUTLINED_FUNCTION_14_61();
      goto LABEL_7;
    }

    *a3 = xmmword_1C7586850;
    *(a3 + 16) = 4094;
    result = 0.0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 49) = 0u;
  }

  return result;
}

uint64_t static MemoryCreationAvailabilityMonitor.analyticsPayload(photoLibrary:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C73B813C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = [objc_allocWithZone(MEMORY[0x1E69789D0]) initWithPhotoLibrary_];
  v0[13] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1C73B820C;

  return static MemoryCreationAvailabilityMonitor.generateFeatureAvailabilityState(using:)((v0 + 2), v1);
}

uint64_t sub_1C73B820C()
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
  *(v5 + 120) = v0;

  if (v0)
  {
    v9 = sub_1C73B875C;
  }

  else
  {

    v9 = sub_1C73B8324;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C73B8324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8[1].i64[0];
  v11 = v8[1].i64[1];
  v9 = v8 + 1;
  v12 = v8[2].i64[0];
  v13 = v9[1].i64[1];
  v14 = v9[4].u8[0];
  v49 = v9[3];
  v50 = v9[2];
  v15 = vorrq_s8(v49, v50);
  v48 = v15;
  switch(v14 >> 6)
  {
    case 3u:
      OUTLINED_FUNCTION_34_37(1, a2, a3, a4, a5, a6, a7, a8, v15);
      break;
    default:
      break;
  }

  sub_1C755104C();
  v16 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40();
  if (v14 >> 6 == 3)
  {
    OUTLINED_FUNCTION_34_37(v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  v26 = v51;
  sub_1C7550C7C();
  swift_isUniquelyReferenced_nonNull_native();
  v52 = v16;
  sub_1C6FC7E40();
  switch(v14 >> 6)
  {
    case 1u:
      LOWORD(v52) = v10 & 0x101;
      BYTE2(v52) = BYTE2(v10) & 1;
      BYTE3(v52) = BYTE3(v10) & 1;
      BYTE4(v52) = BYTE4(v10) & 1;
      BYTE5(v52) = BYTE5(v10) & 1;
      BYTE6(v52) = BYTE6(v10);
      sub_1C6FE6DA4();
      goto LABEL_12;
    case 2u:
      v52 = v10;
      sub_1C6FE79C0();
LABEL_12:
      OUTLINED_FUNCTION_24_2();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_22_59(isUniquelyReferenced_nonNull_native, v38, v39, v40, v41, v42, v43, v44, v48.i64[0], v48.i64[1], v49.i64[0], v49.i64[1], v50.i64[0], v50.i64[1], v51, v52);
      goto LABEL_13;
    case 3u:
      if (v14 != 192 || v10 | *&vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL)) | v13 | v12 | v11)
      {
LABEL_13:
        v45 = *(v26 + 104);
        sub_1C6F65BE8(0, &qword_1EDD108E0);
        sub_1C75513BC();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_42_33();
        OUTLINED_FUNCTION_52_28();
        sub_1C75513BC();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_42_33();
        OUTLINED_FUNCTION_52_28();
        sub_1C75513BC();
        OUTLINED_FUNCTION_141();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_42_33();
        sub_1C6FC7E40();
      }

      else
      {
        v36 = *(v51 + 104);
        static MemoryCreationAvailabilityMonitor.hardwareIsEligibleForGreymatter()();
        sub_1C7550C7C();
        OUTLINED_FUNCTION_141();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_42_33();
        sub_1C6FC7E40();
      }

      break;
    default:
      v27 = *(v51 + 104);
      sub_1C6FE6034();
      OUTLINED_FUNCTION_24_2();
      v28 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_22_59(v28, v29, v30, v31, v32, v33, v34, v35, v48.i64[0], v48.i64[1], v49.i64[0], v49.i64[1], v50.i64[0], v50.i64[1], v51, v10);

      break;
  }

  v46 = *(v26 + 8);

  return v46(v52);
}

uint64_t sub_1C73B875C()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 104);

  if (qword_1EDD0FB68 != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v2 = *(v0 + 120);
  v3 = sub_1C754FF1C();
  __swift_project_value_buffer(v3, qword_1EDD0FB70);
  v4 = OUTLINED_FUNCTION_24_2();
  v5 = sub_1C754FEEC();
  v6 = sub_1C755119C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 120);
  if (v7)
  {
    OUTLINED_FUNCTION_13_3();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_23();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1C6F5C000, v5, v6, "Error generating FeatureAvailabilityState: %@", v9, 0xCu);
    sub_1C6FD7FC8(v10, &qword_1EC215190);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v13 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v13);
  }

  else
  {
  }

  OUTLINED_FUNCTION_116();
  v15 = MEMORY[0x1E69E7CC8];

  return v14(v15);
}

id MemoryCreationAvailabilityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1C73B8978(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
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

    v12 = a6(v11, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

unint64_t sub_1C73B8A34()
{
  result = qword_1EC21B1C0;
  if (!qword_1EC21B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B1C0);
  }

  return result;
}

uint64_t dispatch thunk of MemoryCreationAvailabilityMonitorObservable.updateMemoryCreationAvailability()()
{
  OUTLINED_FUNCTION_49_0();
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_52_3(v2);

  return v4();
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationAvailabilityMonitor.Error(_BYTE *result, int a2, int a3)
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

uint64_t objectdestroy_24Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_3_16();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C73B8DB4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_66_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_74(v3);

  return sub_1C73B6FB8(v5, v6, v7, v1);
}

uint64_t sub_1C73B8E88()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_66_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_74(v3);

  return sub_1C73B5D08(v5, v6, v7, v1);
}

uint64_t OUTLINED_FUNCTION_69_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C6FEB80C(0, 0, v6, v5, a5);
}

uint64_t OUTLINED_FUNCTION_70_19()
{

  return sub_1C755180C();
}

void *sub_1C73B9014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45[1] = *MEMORY[0x1E69E9840];
  sub_1C73B9540(a1);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1C7550B3C();

  v6 = sub_1C754DC8C();
  v45[0] = 0;
  v7 = [ObjCClassFromMetadata searchWithEmbeddings:v5 photoLibraryURL:v6 searchOptions:a3 error:v45];

  v8 = v45[0];
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B1F8);
    v9 = sub_1C7550B5C();
    v10 = v8;

    v11 = *(v9 + 16);
    if (v11)
    {
      v45[0] = MEMORY[0x1E69E7CC0];
      sub_1C716D7F8(0, v11, 0);
      v12 = 0;
      v13 = v45[0];
      v40 = v9;
      v41 = v9 + 32;
      v39 = v11;
      do
      {
        if (v12 >= *(v9 + 16))
        {
          goto LABEL_32;
        }

        v42 = v12 + 1;
        v43 = v13;
        v14 = *(v41 + 8 * v12);
        v15 = sub_1C6FB6304();
        sub_1C75504FC();
        v16 = 0;
        v44 = MEMORY[0x1E69E7CC0];
        while (v15 != v16)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1CCA5DDD0](v16, v14);
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
          }

          v20 = sub_1C73B98E8(v17);
          if (v21)
          {
            v26 = v20;
            v27 = v21;
            v28 = [v18 similarity];
            [v28 doubleValue];
            v30 = v29;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB1DA0();
              v44 = v33;
            }

            v31 = *(v44 + 16);
            if (v31 >= *(v44 + 24) >> 1)
            {
              sub_1C6FB1DA0();
              v44 = v34;
            }

            *(v44 + 16) = v31 + 1;
            v32 = v44 + 32 * v31;
            *(v32 + 32) = v26;
            *(v32 + 40) = v27;
            *(v32 + 48) = v30;
            *(v32 + 56) = 0;
            v16 = v19;
          }

          else
          {
            if (qword_1EC214078 != -1)
            {
              swift_once();
            }

            v22 = sub_1C754FF1C();
            __swift_project_value_buffer(v22, qword_1EC21B1E0);
            v23 = sub_1C754FEEC();
            v24 = sub_1C755119C();
            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              *v25 = 0;
              _os_log_impl(&dword_1C6F5C000, v23, v24, "Unexpected missing identifier in embedding search db result.", v25, 2u);
              MEMORY[0x1CCA5F8E0](v25, -1, -1);
            }

            ++v16;
          }
        }

        v13 = v43;
        v45[0] = v43;
        v36 = v43[2];
        v35 = v43[3];
        if (v36 >= v35 >> 1)
        {
          sub_1C716D7F8((v35 > 1), v36 + 1, 1);
          v13 = v45[0];
        }

        v13[2] = v36 + 1;
        v13[v36 + 4] = v44;
        v12 = v42;
        v9 = v40;
      }

      while (v42 != v39);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v37 = v45[0];
    v13 = sub_1C754DBEC();

    swift_willThrow();
  }

  return v13;
}

void *sub_1C73B944C(void *result)
{
  v1 = result[2];
  if (v1 >> 31)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x1E69BE598]) initWithResultLimit_];
    sub_1C73B9888(v2, v3);
    [v3 setFullScan_];
    return v3;
  }

  return result;
}

uint64_t sub_1C73B94C0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21B1E0);
  __swift_project_value_buffer(v0, qword_1EC21B1E0);
  return sub_1C754FEFC();
}

unint64_t sub_1C73B9540(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    *__dst = MEMORY[0x1E69E7CC0];
    sub_1C716EB00(0, v2, 0);
    v5 = 0;
    v6 = *__dst;
    v32 = v2;
    v33 = a1 + 32;
    do
    {
      v7 = *(v33 + 8 * v5);
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v3;
        v36 = v3;
        sub_1C75504FC();
        sub_1C716EB20();
        v1 = v3;
        v10 = *(v3 + 16);
        v11 = 32;
        do
        {
          _S8 = *(v7 + v11);
          v36 = v1;
          if (v10 >= *(v1 + 24) >> 1)
          {
            sub_1C716EB20();
            v1 = v36;
          }

          __asm { FCVT            H0, S8 }

          *(v1 + 16) = v10 + 1;
          *(v1 + 2 * v10 + 32) = _H0;
          v11 += 4;
          ++v10;
          --v8;
        }

        while (v8);

        v3 = v9;
        v2 = v32;
      }

      else
      {
        v1 = v3;
      }

      *__dst = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_1C716EB00((v18 > 1), v19 + 1, 1);
        v6 = *__dst;
      }

      ++v5;
      *(v6 + 16) = v20;
      *(v6 + 8 * v19 + 32) = v1;
    }

    while (v5 != v2);
  }

  else
  {
    v20 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v20)
    {
      v22 = MEMORY[0x1E69E7CC0];
      goto LABEL_28;
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  v36 = v3;
  sub_1C716EAB4();
  v21 = 32;
  v22 = v3;
  do
  {
    v23 = *(v6 + v21);
    v24 = *(v23 + 16);
    if ((v24 + 0x4000000000000000) < 0)
    {
      __break(1u);
    }

    if (v24)
    {
      v25 = 2 * v24;
      if ((2 * v24) <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v35 = 2 * v24;
        memcpy(__dst, (v23 + 32), 2 * v24);
        v24 = *__dst;
        v1 = v1 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v35 << 16)) << 32);
        sub_1C75504FC();
        v28 = v1;
      }

      else
      {
        sub_1C754D9CC();
        swift_allocObject();
        sub_1C75504FC();
        v26 = sub_1C754D98C();
        v27 = v26;
        if (v24 >> 30)
        {
          sub_1C754DD8C();
          v24 = swift_allocObject();
          *(v24 + 16) = 0;
          *(v24 + 24) = v25;
          v28 = v27 | 0x8000000000000000;
        }

        else
        {
          v24 <<= 33;
          v28 = v26 | 0x4000000000000000;
        }
      }
    }

    else
    {
      sub_1C75504FC();
      v28 = 0xC000000000000000;
    }

    v36 = v22;
    v29 = *(v22 + 16);
    if (v29 >= *(v22 + 24) >> 1)
    {
      sub_1C716EAB4();
      v22 = v36;
    }

    *(v22 + 16) = v29 + 1;
    v30 = v22 + 16 * v29;
    *(v30 + 32) = v24;
    *(v30 + 40) = v28;
    v21 += 8;
    --v20;
  }

  while (v20);
LABEL_28:

  return v22;
}

void sub_1C73B9888(uint64_t a1, void *a2)
{
  v3 = sub_1C7550B3C();
  [a2 setAssetUUIDsForPrefilter_];
}

uint64_t sub_1C73B98E8(void *a1)
{
  v1 = [a1 assetUUID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

uint64_t sub_1C73B994C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v18 = v3;
    v24 = MEMORY[0x1E69E7CC0];
    v20 = v9;
    sub_1C755195C();
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v19 = *(v8 + 72);
    do
    {
      __swift_mutable_project_boxed_opaque_existential_0(a2, *(a2 + 24));
      v14 = sub_1C755057C();
      v22 = &type metadata for Random.Arc4Random;
      v23 = sub_1C7054F1C();
      Random.Arc4Random.init(seed:)(v14, v21);
      (*(v8 + 16))(v11, v13, v20);
      v15 = *(a3 + 96);
      v16 = *(a3 + 104);
      _s20ClusterElectionStateCMa(0);
      swift_allocObject();

      sub_1C75504FC();
      sub_1C73BD4D8(v11, v15, v21, v16);
      __swift_destroy_boxed_opaque_existential_1(v21);
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      v13 += v19;
      --v12;
    }

    while (v12);

    return v24;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1C73B9B70(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(type metadata accessor for Hastings.Asset(0) - 8);
    result = sub_1C741B1C4(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
  return result;
}

uint64_t sub_1C73B9C30(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_2();
  v5 = v3 == 0xD000000000000011 && v4 == a2;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_6_2() & 1) != 0))
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    v9 = v6 == 0xD000000000000012 && v8 == a2;
    if (v9 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_10_2();
      v11 = v6 == 0xD000000000000015 && v10 == a2;
      if (v11 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_10_2();
        v13 = v6 == 0xD000000000000015 && v12 == a2;
        if (v13 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_10_2();
          v15 = v6 == 0xD000000000000011 && v14 == a2;
          if (v15 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_10_2();
            if (v6 == 0xD000000000000022 && v16 == a2)
            {

              return 5;
            }

            else
            {
              v18 = OUTLINED_FUNCTION_6_2();

              if (v18)
              {
                return 5;
              }

              else
              {
                return 6;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C73B9DBC(char a1)
{
  result = 0xD000000000000011;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73B9E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73B9C30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73B9E84(uint64_t a1)
{
  v2 = sub_1C73BE800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73B9EC0(uint64_t a1)
{
  v2 = sub_1C73BE800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73B9EFC()
{
  v2 = v1;
  OUTLINED_FUNCTION_300();
  v3 = type metadata accessor for Hastings.Feature();
  v4 = OUTLINED_FUNCTION_18(v3);
  v111 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v121 = (v7 - v6);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B288);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v114 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v118 = v101 - v12;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B248);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v117 = (v101 - v14);
  v15 = type metadata accessor for Hastings.Asset(0);
  v16 = OUTLINED_FUNCTION_18(v15);
  v119 = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v122 = (v19 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B290);
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v101 - v24;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1C73BE800();
  sub_1C755200C();
  v26 = *(v1 + 24);
  if (v26)
  {
    v27 = *(v26 + 16);
    v28 = MEMORY[0x1E69E7CC0];
    if (v27)
    {
      v112 = v22;
      v113 = v25;
      v109 = v1;
      v110 = v20;
      v124 = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C6F7ED9C();
      v28 = v124;
      OUTLINED_FUNCTION_15_4();
      v108 = v26;
      v30 = v26 + v29;
      v32 = *(v31 + 72);
      do
      {
        v33 = v122;
        sub_1C73BE6F4(v30, v122, type metadata accessor for Hastings.Asset);
        v35 = *v33;
        v34 = v33[1];
        sub_1C75504FC();
        sub_1C73BE750();
        v124 = v28;
        v36 = *(v28 + 16);
        if (v36 >= *(v28 + 24) >> 1)
        {
          sub_1C6F7ED9C();
          v28 = v124;
        }

        *(v28 + 16) = v36 + 1;
        v37 = v28 + 16 * v36;
        *(v37 + 32) = v35;
        *(v37 + 40) = v34;
        v30 += v32;
        --v27;
      }

      while (v27);

      v2 = v109;
      v20 = v110;
      v22 = v112;
      v25 = v113;
    }
  }

  else
  {
    v28 = 0;
  }

  v124 = v28;
  LOBYTE(v125) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217538);
  v39 = sub_1C73BE8B8(&qword_1EDD06A90, &qword_1EC217538, &unk_1C7586ED0, sub_1C6FC18BC);
  v40 = v120;
  sub_1C7551D2C();
  if (v40)
  {

    return (*(v22 + 8))(v25, v20);
  }

  v101[1] = v39;

  v41 = OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_requirementCollection;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v42 = v2 + v41;
  v43 = v117;
  sub_1C712A774(v42, v117, &qword_1EC21B248);
  LOBYTE(v125) = 2;
  sub_1C73BE8B8(&qword_1EC21B2A0, &qword_1EC21B248, &unk_1C7586E50, sub_1C73BE854);
  OUTLINED_FUNCTION_30_41();
  sub_1C6FD7FC8(v43, &qword_1EC21B248);
  v45 = *(v2 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_featuresByAsset);
  v106 = v38;
  if (v45)
  {
    v109 = v2;
    v46 = v45 + 64;
    OUTLINED_FUNCTION_13_75();
    v49 = v48 & v47;
    v51 = (v50 + 63) >> 6;
    v107 = v52;
    swift_bridgeObjectRetain_n();
    v53 = 0;
    v54 = MEMORY[0x1E69E7CC8];
    v105 = 0;
    v103 = v46;
    v102 = v51;
    v110 = v20;
    v112 = v22;
    v113 = v25;
    if (!v49)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v117 = v54;
LABEL_20:
      v108 = v49;
      v116 = v53;
      v56 = __clz(__rbit64(v49)) | (v53 << 6);
      v57 = v107;
      v58 = v118;
      sub_1C73BE6F4(*(v107 + 48) + *(v119 + 72) * v56, v118, type metadata accessor for Hastings.Asset);
      v59 = *(*(v57 + 56) + 8 * v56);
      v60 = v115;
      *(v58 + *(v115 + 48)) = v59;
      v61 = v58;
      v62 = v114;
      sub_1C712A774(v61, v114, &qword_1EC21B288);
      v40 = *(v62 + *(v60 + 48));
      sub_1C75504FC();

      v63 = v62[1];
      v120 = *v62;
      sub_1C75504FC();
      OUTLINED_FUNCTION_295();
      sub_1C73BE750();
      v64 = *(v59 + 16);
      if (v64)
      {
        v104 = v63;
        v125 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_29_38();
        v65 = v125;
        OUTLINED_FUNCTION_15_4();
        v67 = v59 + v66;
        v69 = *(v68 + 72);
        do
        {
          OUTLINED_FUNCTION_8_76();
          v70 = v121;
          sub_1C73BE6F4(v67, v121, v71);
          v73 = *v70;
          v72 = v70[1];
          sub_1C75504FC();
          sub_1C73BE750();
          v125 = v65;
          v74 = v65[2];
          if (v74 >= v65[3] >> 1)
          {
            OUTLINED_FUNCTION_21_55();
            v65 = v125;
          }

          v65[2] = v74 + 1;
          v75 = &v65[2 * v74];
          v75[4] = v73;
          v75[5] = v72;
          v67 += v69;
          --v64;
        }

        while (v64);
        v20 = v110;
        v63 = v104;
      }

      else
      {
        v65 = MEMORY[0x1E69E7CC0];
      }

      v76 = v117;
      swift_isUniquelyReferenced_nonNull_native();
      v125 = v76;
      v77 = sub_1C6F78124(v120, v63);
      if (__OFADD__(*(v76 + 16), (v78 & 1) == 0))
      {
        break;
      }

      v79 = v77;
      v80 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0);
      if (sub_1C7551A2C())
      {
        v81 = sub_1C6F78124(v120, v63);
        if ((v80 & 1) != (v82 & 1))
        {
          goto LABEL_54;
        }

        v79 = v81;
      }

      v46 = v103;
      v51 = v102;
      if (v80)
      {

        v54 = v125;
        *(v125[7] + 8 * v79) = v65;
      }

      else
      {
        v54 = v125;
        v125[(v79 >> 6) + 8] |= 1 << v79;
        v83 = (v54[6] + 16 * v79);
        *v83 = v120;
        v83[1] = v63;
        *(v54[7] + 8 * v79) = v65;
        v84 = v54[2];
        v85 = __OFADD__(v84, 1);
        v86 = v84 + 1;
        if (v85)
        {
          goto LABEL_53;
        }

        v54[2] = v86;
      }

      v22 = v112;
      v25 = v113;
      v49 = (v108 - 1) & v108;
      sub_1C6FD7FC8(v118, &qword_1EC21B288);
      v53 = v116;
      if (!v49)
      {
LABEL_16:
        while (1)
        {
          v55 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            break;
          }

          if (v55 >= v51)
          {

            v2 = v109;
            goto LABEL_39;
          }

          v49 = *(v46 + 8 * v55);
          ++v53;
          if (v49)
          {
            v117 = v54;
            v53 = v55;
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    v54 = 0;
LABEL_39:
    v117 = v54;
    v125 = v54;
    v123 = 3;
    v87 = OUTLINED_FUNCTION_90();
    __swift_instantiateConcreteTypeFromMangledNameV2(v87);
    sub_1C73BE8B8(&qword_1EC21B2B8, &qword_1EC21B2B0, &unk_1C7586ED8, sub_1C73BE934);
    OUTLINED_FUNCTION_16_59();
    OUTLINED_FUNCTION_30_41();
    if (!v40)
    {

      v88 = *(v2 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_electedAssets);
      if (v88)
      {
        v113 = v25;
        v89 = *(v88 + 16);
        v90 = MEMORY[0x1E69E7CC0];
        if (v89)
        {
          v105 = 0;
          v112 = v22;
          v109 = v2;
          v110 = v20;
          v125 = MEMORY[0x1E69E7CC0];
          sub_1C75504FC();
          OUTLINED_FUNCTION_29_38();
          v90 = v125;
          OUTLINED_FUNCTION_15_4();
          v121 = v88;
          v92 = v88 + v91;
          v94 = *(v93 + 72);
          do
          {
            v95 = v122;
            sub_1C73BE6F4(v92, v122, type metadata accessor for Hastings.Asset);
            v96 = *v95;
            v97 = v95[1];
            sub_1C75504FC();
            sub_1C73BE750();
            v125 = v90;
            v98 = v90[2];
            if (v98 >= v90[3] >> 1)
            {
              OUTLINED_FUNCTION_21_55();
              v90 = v125;
            }

            v90[2] = v98 + 1;
            v99 = &v90[2 * v98];
            v99[4] = v96;
            v99[5] = v97;
            v92 += v94;
            --v89;
          }

          while (v89);

          v2 = v109;
          v20 = v110;
          v22 = v112;
        }

        v25 = v113;
      }

      else
      {
        v90 = 0;
      }

      v125 = v90;
      v123 = 4;
      OUTLINED_FUNCTION_16_59();
      OUTLINED_FUNCTION_30_41();

      v125 = *(v2 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_roundRobinHelperDiagnosticReporter);
      v123 = 5;
      _s24RoundRobinElectionHelperC18DiagnosticReporterCMa();
      sub_1C73BD984(&qword_1EC21B2C8, v100, _s24RoundRobinElectionHelperC18DiagnosticReporterCMa);
      OUTLINED_FUNCTION_16_59();
      OUTLINED_FUNCTION_30_41();
      return (*(v22 + 8))(v25, v20);
    }

    (*(v22 + 8))(v25, v20);
  }

  return result;
}

uint64_t sub_1C73BA994()
{

  sub_1C6FD7FC8(v0 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_requirementCollection, &qword_1EC21B248);

  return v0;
}

uint64_t sub_1C73BAA0C()
{
  sub_1C73BA994();

  return swift_deallocClassInstance();
}

void sub_1C73BAA8C()
{
  sub_1C73BAB38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C73BAB38()
{
  if (!qword_1EC21B210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B218);
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC21B210);
    }
  }
}

uint64_t sub_1C73BAB9C()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_requirementCollection;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B218);
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_featuresByAsset) = 0;
  *(v1 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_electedAssets) = 0;
  v4 = OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_roundRobinHelperDiagnosticReporter;
  _s24RoundRobinElectionHelperC18DiagnosticReporterCMa();
  v5 = swift_allocObject();
  type metadata accessor for Hastings.ClusterAssetElector.DiagnosticReporter();
  swift_allocObject();
  *(v5 + 16) = sub_1C73D26D4();
  *(v1 + v4) = v5;
  return v1;
}

uint64_t sub_1C73BAC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v148 = a3;
  i = sub_1C754F58C();
  v6 = OUTLINED_FUNCTION_18(i);
  v163 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_108_0(v9 - v8);
  *&v169 = type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v173 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v16);
  v185 = v147 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B248);
  OUTLINED_FUNCTION_76(v18);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_108_0(v147 - v20);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B218);
  v21 = OUTLINED_FUNCTION_18(v151);
  v150 = v22;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_108_0(v147 - v24);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  OUTLINED_FUNCTION_3_0();
  v166 = v25;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_108_0(v147 - v27);
  v28 = v3[1];
  v182 = *v3;
  v183 = v28;
  v29 = v3[3];
  *v184 = v3[2];
  *&v184[16] = v29;
  v152 = *(&v29 + 1);
  v157 = v4;
  v164 = a1;
  if (*(&v29 + 1))
  {
    v30 = *(a1 + 16);
    v31 = MEMORY[0x1E69E7CC8];
    v32 = (a1 + 64);
    if (v30)
    {
      do
      {
        v167 = v30;
        v34 = *(v32 - 4);
        v33 = *(v32 - 3);
        v35 = *(v32 - 2);
        v172 = *v32;
        sub_1C75504FC();
        v174 = v35;
        sub_1C75504FC();
        sub_1C75504FC();
        swift_isUniquelyReferenced_nonNull_native();
        *&v179 = v31;
        v36 = OUTLINED_FUNCTION_295();
        v38 = sub_1C6F78124(v36, v37);
        if (__OFADD__(*(v31 + 16), (v39 & 1) == 0))
        {
          __break(1u);
          goto LABEL_76;
        }

        v40 = v38;
        v41 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
        if (sub_1C7551A2C())
        {
          v42 = OUTLINED_FUNCTION_295();
          v44 = sub_1C6F78124(v42, v43);
          if ((v41 & 1) != (v45 & 1))
          {
            result = sub_1C7551E4C();
            __break(1u);
            return result;
          }

          v40 = v44;
        }

        v31 = v179;
        if (v41)
        {
          OUTLINED_FUNCTION_22_60();
        }

        else
        {
          *(v179 + 8 * (v40 >> 6) + 64) |= 1 << v40;
          v46 = (*(v31 + 48) + 16 * v40);
          *v46 = v34;
          v46[1] = v33;
          OUTLINED_FUNCTION_22_60();

          v47 = *(v31 + 16);
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_77;
          }

          *(v31 + 16) = v49;
        }

        v32 += 5;
        v30 = v167 - 1;
      }

      while (v167 != 1);
    }

    *(v152 + 16) = v31;

    a1 = v164;
  }

  v160 = *(a1 + 16);
  if (v160)
  {
    v179 = v182;
    v180 = v183;
    *v181 = *v184;
    *&v181[16] = *&v184[16];
    v50 = sub_1C73BBE30(a1);
    swift_getKeyPath();
    v51 = *(v50 + 16);
    v156 = v50;
    if (v51)
    {
      *&v179 = MEMORY[0x1E69E7CC0];
      sub_1C716ED18(0, v51, 0);
      v52 = v179;
      v174 = *(v166 + 16);
      v53 = v50 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v172 = *(v166 + 72);
      v166 += 16;
      v54 = (v166 - 8);
      v55 = v162;
      do
      {
        v56 = v165;
        v174(v165, v53, v55);
        swift_getAtKeyPath();
        (*v54)(v56, v55);
        v57 = v175;
        *&v179 = v52;
        v59 = *(v52 + 16);
        v58 = *(v52 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1C716ED18((v58 > 1), v59 + 1, 1);
          v55 = v162;
          v52 = v179;
        }

        *(v52 + 16) = v59 + 1;
        *(v52 + 8 * v59 + 32) = v57;
        v53 += v172;
        --v51;
      }

      while (v51);
    }

    else
    {

      v52 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_4_94();
    v66 = sub_1C73BC064(v52);
    v67 = v151;
    v68 = v150;
    v69 = v149;
    v70 = v152;
    v147[2] = v66;
    v71 = v164;
    if (v152)
    {
      *(v152 + 24) = v66;
      sub_1C75504FC();

      OUTLINED_FUNCTION_4_94();
      sub_1C73BC380();
      v72 = *(v68 + 16);
      v68 = v161;
      v72(v161, v69, v67);
      __swift_storeEnumTagSinglePayload(v68, 0, 1, v67);
      v73 = OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_requirementCollection;
      swift_beginAccess();
      sub_1C73BE630(v68, v70 + v73);
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_4_94();
      sub_1C73BC380();
    }

    v74 = v163;
    OUTLINED_FUNCTION_4_94();
    v75 = sub_1C73BC5B4(v52);

    if (v70)
    {
      *(v70 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_featuresByAsset) = v75;
      sub_1C75504FC();
    }

    v147[0] = v75;
    v76 = 0;
    v178 = MEMORY[0x1E69E7CD0];
    v159 = v71 + 32;
    LODWORD(v167) = *MEMORY[0x1E69C1920];
    v166 = v74 + 104;
    v165 = v74 + 8;
LABEL_31:
    if (v76 != v160)
    {
      v77 = (v159 + 40 * v76);
      v78 = v77[1];
      v79 = v77[2];
      v80 = v77[3];
      v163 = v76 + 1;
      v81 = v80 + 64;
      v82 = 1 << *(v80 + 32);
      if (v82 < 64)
      {
        v83 = ~(-1 << v82);
      }

      else
      {
        v83 = -1;
      }

      v84 = v83 & *(v80 + 64);
      v85 = (v82 + 63) >> 6;
      v162 = v78;
      sub_1C75504FC();
      v161 = v79;
      sub_1C75504FC();
      v174 = v80;
      swift_bridgeObjectRetain_n();
      v86 = 0;
      v164 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        while (1)
        {
          v87 = v86;
          if (!v84)
          {
            while (1)
            {
              v86 = v87 + 1;
              if (__OFADD__(v87, 1))
              {
                break;
              }

              if (v86 >= v85)
              {

                v75 = &v178;
                sub_1C7397D14();

                v76 = v163;
                goto LABEL_31;
              }

              v84 = *(v81 + 8 * v86);
              ++v87;
              if (v84)
              {
                goto LABEL_40;
              }
            }

            __break(1u);
LABEL_69:
            v139 = 0;
            goto LABEL_70;
          }

LABEL_40:
          v84 &= v84 - 1;
          OUTLINED_FUNCTION_27_46();
          v172 = v88;
          v90 = OUTLINED_FUNCTION_6_98(v89);
          v91 = v168;
          sub_1C73BE6F4(v90, v168, v92);
          OUTLINED_FUNCTION_0_166();
          sub_1C73BE7A4(v91, v185, v93);
          (*v166)(v170, v167, i);
          sub_1C73BD984(&qword_1EC2147A0, 255, MEMORY[0x1E69C1928]);
          sub_1C7550A5C();
          sub_1C7550A5C();
          v75 = v176;
          if (v179 != v175 || *(&v179 + 1) != v176)
          {
            break;
          }

          v97 = OUTLINED_FUNCTION_18_58();
          v98(v97);

LABEL_47:
          OUTLINED_FUNCTION_0_166();
          sub_1C73BE7A4(v185, v158, v99);
          v100 = v164;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v177 = v100;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v75 = &v177;
            sub_1C716ED38(0, *(v100 + 16) + 1, 1);
            v100 = v177;
          }

          v68 = *(v100 + 16);
          v102 = *(v100 + 24);
          if (v68 >= v102 >> 1)
          {
            v75 = &v177;
            sub_1C716ED38(v102 > 1, v68 + 1, 1);
            v100 = v177;
          }

          *(v100 + 16) = v68 + 1;
          v164 = v100;
          OUTLINED_FUNCTION_0_166();
          sub_1C73BE7A4(v158, v103, v104);
        }

        v68 = sub_1C7551DBC();
        v95 = OUTLINED_FUNCTION_18_58();
        v96(v95);

        if (v68)
        {
          goto LABEL_47;
        }

        sub_1C73BE750();
      }
    }

    v105 = v178 + 56;
    OUTLINED_FUNCTION_13_75();
    v108 = v107 & v106;
    v110 = (v109 + 63) >> 6;
    v185 = v111;
    sub_1C75504FC();
    v112 = 0;
    *&v113 = 136315394;
    v169 = v113;
    v172 = v105;
    for (i = v110; ; v110 = i)
    {
      v114 = v154;
      if (!v108)
      {
        break;
      }

      v115 = v112;
      v116 = v155;
LABEL_60:
      OUTLINED_FUNCTION_27_46();
      v118 = OUTLINED_FUNCTION_6_98(v117);
      sub_1C73BE6F4(v118, v114, v119);
      if (qword_1EC213E88 != -1)
      {
        OUTLINED_FUNCTION_9_83();
        swift_once();
      }

      v108 &= v108 - 1;
      v120 = sub_1C754FF1C();
      __swift_project_value_buffer(v120, qword_1EC25B6F0);
      OUTLINED_FUNCTION_7_85();
      sub_1C73BE6F4(v114, v116, v121);
      v122 = v153;
      sub_1C73BE6F4(v114, v153, v68);
      sub_1C75504FC();
      v123 = sub_1C754FEEC();
      v124 = sub_1C75511BC();

      sub_1C73BE750();
      LODWORD(v174) = v124;
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *&v179 = v126;
        *v125 = v169;
        v170 = v123;
        v127 = Hastings.Feature.description.getter();
        v129 = v128;
        OUTLINED_FUNCTION_7_85();
        sub_1C73BE750();
        v130 = sub_1C6F765A4(v127, v129, &v179);

        *(v125 + 4) = v130;
        *(v125 + 12) = 2080;
        MEMORY[0x1EEE9AC00](v131);
        v147[-2] = v122;
        v132 = v157;
        sub_1C7045190(sub_1C73BE614, &v147[-4], v156);
        v157 = v132;
        v134 = MEMORY[0x1CCA5D090](v133);
        v136 = v135;

        sub_1C73BE750();
        v137 = sub_1C6F765A4(v134, v136, &v179);

        *(v125 + 14) = v137;
        v138 = v170;
        _os_log_impl(&dword_1C6F5C000, v170, v174, "[featuresToRepresent] Feature %s, expected from clusters %s", v125, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v126, -1, -1);
        MEMORY[0x1CCA5F8E0](v125, -1, -1);
      }

      else
      {

        OUTLINED_FUNCTION_8_76();
        sub_1C73BE750();
        OUTLINED_FUNCTION_90();
        sub_1C73BE750();
      }

      v112 = v115;
      v105 = v172;
    }

    v116 = v155;
    while (1)
    {
      v115 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        break;
      }

      if (v115 >= v110)
      {

        v179 = v182;
        v180 = v183;
        *v181 = *v184;
        *&v181[14] = *&v184[14];
        sub_1C75504FC();
        sub_1C7035CB0(&v182, &v175);
        v75 = sub_1C706E8F0();
        v84 = v152;
        if (!v152)
        {
          goto LABEL_69;
        }

        v139 = *(v152 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_roundRobinHelperDiagnosticReporter);

LABEL_70:
        v65 = v157;
        v140 = v151;
        v141 = v150;
        v142 = v149;
        v143 = _s24RoundRobinElectionHelperCMa();
        v144 = swift_allocObject();
        sub_1C73BDCE4(&v179, v75, v139);
        (*(v141 + 16))(v147[1], v142, v140);
        *(&v180 + 1) = v143;
        *v181 = sub_1C73BD984(&qword_1EC21B250, v145, _s24RoundRobinElectionHelperCMa);
        *&v179 = v144;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B258);
        swift_allocObject();

        sub_1C754F4AC();
        sub_1C754F48C();
        if (v65)
        {
          (*(v141 + 8))(v142, v140);
        }

        else
        {
          v65 = sub_1C754F49C();

          (*(v141 + 8))(v142, v140);
          if (v84)
          {
            *(v84 + OBJC_IVAR____TtCVV18PhotosIntelligence8Hastings7Elector18DiagnosticReporter_electedAssets) = v65;
            sub_1C75504FC();
          }
        }

        return v65;
      }

      v108 = *(v105 + 8 * v115);
      ++v112;
      if (v108)
      {
        goto LABEL_60;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
  }

  else if (qword_1EC213E88 == -1)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_9_83();
  swift_once();
LABEL_21:
  v60 = sub_1C754FF1C();
  __swift_project_value_buffer(v60, qword_1EC25B6F0);
  v61 = sub_1C754FEEC();
  v62 = sub_1C755119C();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1C6F5C000, v61, v62, "No clusters to elect from, bailing out", v63, 2u);
    MEMORY[0x1CCA5F8E0](v63, -1, -1);
  }

  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v64 + 8))(v148);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C73BBE30(uint64_t a1)
{
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  v3 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0]);
  v5 = v20 - v4;
  v6 = v1[1];
  v23[0] = *v1;
  v23[1] = v6;
  v7 = v1[3];
  v23[2] = v1[2];
  v23[3] = v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C716EC8C(0, v8, 0);
    v10 = 0;
    v9 = v22;
    v11 = (a1 + 64);
    do
    {
      v13 = *(v11 - 4);
      v12 = *(v11 - 3);
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      v20[1] = v10;
      v21[0] = v13;
      v21[1] = v12;
      v21[2] = v14;
      v21[3] = v15;
      v21[4] = v16;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C73BCB48(v21, v16, v23, v5);

      v22 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C716EC8C(v17 > 1, v18 + 1, 1);
        v9 = v22;
      }

      v11 += 5;
      ++v10;
      *(v9 + 16) = v18 + 1;
      (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v5, v20[0]);
    }

    while (v8 != v10);
  }

  return v9;
}

uint64_t sub_1C73BC024@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  result = sub_1C754F46C();
  *a1 = result;
  return result;
}

uint64_t sub_1C73BC064(uint64_t a1)
{
  v3 = type metadata accessor for Hastings.Asset(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v28 - v6);
  v8 = *(v1 + 8);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v10 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  v11 = *(a1 + 16);
  v28 = a1 + 32;
  v29 = v11;
LABEL_3:
  if (v10 == v29)
  {
    return v37;
  }

  v12 = *(v28 + 8 * v10);
  v30 = v10 + 1;
  v34 = *(v12 + 16);
  result = sub_1C75504FC();
  v14 = 0;
  for (i = result; ; result = i)
  {
LABEL_5:
    if (v14 == v34)
    {

      sub_1C6FD2960();
      v9 = MEMORY[0x1E69E7CC0];
      v10 = v30;
      goto LABEL_3;
    }

    if (v14 >= *(result + 16))
    {
      break;
    }

    v15 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v16 = *(v32 + 72);
    v35 = v14 + 1;
    sub_1C73BE6F4(result + v15 + v16 * v14, v7, type metadata accessor for Hastings.Asset);
    if (*(v8 + 16))
    {
      v17 = *v7;
      v18 = v7[1];
      sub_1C7551F3C();
      sub_1C75505AC();
      v19 = sub_1C7551FAC();
      v20 = ~(-1 << *(v8 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v8 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(v8 + 48) + 16 * v21);
        if (*v22 != v17 || v22[1] != v18)
        {
          v24 = sub_1C7551DBC();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C73BE7A4(v7, v31, type metadata accessor for Hastings.Asset);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C716E298(0, *(v9 + 16) + 1, 1);
          v9 = v36;
        }

        v27 = *(v9 + 16);
        v26 = *(v9 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1C716E298(v26 > 1, v27 + 1, 1);
          v9 = v36;
        }

        *(v9 + 16) = v27 + 1;
        sub_1C73BE7A4(v31, v9 + v15 + v27 * v16, type metadata accessor for Hastings.Asset);
        result = i;
        v14 = v35;
        goto LABEL_5;
      }
    }

    sub_1C73BE750();
    v14 = v35;
  }

  __break(1u);
  return result;
}

void sub_1C73BC380()
{
  v1 = *(v0 + 40);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C716ECCC();
    v4 = 0;
    v11 = v1;
    v12 = *(v1 + 16);
    v2 = v14;
    v5 = (v1 + 48);
    while (v12 != v4)
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_10;
      }

      v6 = *(v5 - 1);
      v7 = *v5;
      v13 = *(v5 - 2);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C755180C();

      v8 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v8);

      v9 = *(v14 + 16);
      if (v9 >= *(v14 + 24) >> 1)
      {
        sub_1C716ECCC();
      }

      *(v14 + 16) = v9 + 1;
      v10 = (v14 + 40 * v9);
      v10[4] = 0xD000000000000017;
      v10[5] = 0x80000001C75AE280;
      v10[6] = v13;
      v10[7] = v6;
      v10[8] = v7;
      ++v4;
      v5 += 3;
      v1 = v11;
      if (v3 == v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    sub_1C71BB6E8(v2);

    sub_1C6FD41E8();
    type metadata accessor for Hastings.Asset(0);
    sub_1C73BD984(&qword_1EC216910, 255, type metadata accessor for Hastings.Asset);
    sub_1C754F59C();
  }
}

uint64_t sub_1C73BC5B4(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v40 - v4;
  v6 = type metadata accessor for Hastings.Asset(0);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v1 + 24);
  if (v43)
  {
    v9 = 0;
    v10 = *(a1 + 16);
    v44 = a1 + 32;
    v45 = v10;
    v11 = MEMORY[0x1E69E7CC8];
    v41 = v5;
LABEL_3:
    if (v9 == v45)
    {
      v50 = MEMORY[0x1E69E7CC8];
      v29 = v43 + 64;
      v30 = 1 << *(v43 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v43 + 64);
      v33 = (v30 + 63) >> 6;
      sub_1C75504FC();
      v34 = 0;
      for (i = 0; v32; v34 = v35)
      {
        v35 = v34;
LABEL_26:
        v36 = __clz(__rbit64(v32)) | (v35 << 6);
        v37 = v43;
        v38 = *(v43 + 48);
        v39 = v38 + *(*(type metadata accessor for Hastings.Feature() - 8) + 72) * v36;
        v2 = v41;
        sub_1C73BE6F4(v39, v41, type metadata accessor for Hastings.Feature);
        *(v2 + *(v42 + 48)) = *(*(v37 + 56) + 8 * v36);
        sub_1C75504FC();
        sub_1C73BCF18(&v50, v2, v11);
        v32 &= v32 - 1;
        sub_1C6FD7FC8(v2, &qword_1EC216A40);
      }

      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v35 >= v33)
        {

          return v50;
        }

        v32 = *(v29 + 8 * v35);
        ++v34;
        if (v32)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v12 = *(v44 + 8 * v9);
      v46 = v9 + 1;
      v13 = *(v12 + 16);
      v48 = v12;
      v49 = v13;
      sub_1C75504FC();
      for (j = 0; ; ++j)
      {
        if (v49 == j)
        {

          v9 = v46;
          goto LABEL_3;
        }

        i = *(v47 + 72);
        v16 = (v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + i * j);
        v17 = *v16;
        v2 = v16[1];
        sub_1C73BE6F4(v16, v8, type metadata accessor for Hastings.Asset);
        sub_1C75504FC();
        swift_isUniquelyReferenced_nonNull_native();
        v50 = v11;
        v18 = sub_1C6F78124(v17, v2);
        if (__OFADD__(v11[2], (v19 & 1) == 0))
        {
          break;
        }

        v20 = v18;
        v21 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A38);
        if (sub_1C7551A2C())
        {
          v22 = sub_1C6F78124(v17, v2);
          if ((v21 & 1) != (v23 & 1))
          {
            goto LABEL_32;
          }

          v20 = v22;
        }

        v11 = v50;
        if (v21)
        {
          sub_1C7091D14(v8, v50[7] + v20 * i);
        }

        else
        {
          v50[(v20 >> 6) + 8] |= 1 << v20;
          v24 = (v11[6] + 16 * v20);
          *v24 = v17;
          v24[1] = v2;
          sub_1C73BE7A4(v8, v11[7] + v20 * i, type metadata accessor for Hastings.Asset);
          v25 = v11[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_30;
          }

          v11[2] = v27;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
LABEL_32:
    sub_1C7551E4C();
    __break(1u);

    sub_1C6FD7FC8(v2, &qword_1EC216A40);

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B260);
    sub_1C73BD984(&qword_1EC216190, 255, type metadata accessor for Hastings.Asset);

    return sub_1C75504DC();
  }

  return result;
}

uint64_t sub_1C73BCAAC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  v4 = sub_1C754F42C();
  v5 = sub_1C6FE1188(a1, v4);

  if (v5)
  {

    result = sub_1C754F45C();
  }

  else
  {
    result = 0;
    v7 = 0;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1C73BCB48@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Hastings.Asset(0);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v33 - v11);
  v13 = *a1;
  v14 = a1[1];
  result = a1[2];
  v16 = *(a3 + 16);
  if (v16)
  {
    v33[0] = a1[3];
    v33[1] = v14;
    v33[2] = v13;
    v33[3] = a4;
    v33[4] = v8;
    v33[5] = a2;
    v17 = 0;
    v37 = *(result + 16);
    v18 = MEMORY[0x1E69E7CC0];
    v35 = result;
LABEL_3:
    v19 = v17;
    while (v19 != v37)
    {
      if (v19 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v20 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v21 = *(v36 + 72);
      v38 = v19 + 1;
      sub_1C73BE6F4(result + v20 + v21 * v19, v12, type metadata accessor for Hastings.Asset);
      if (*(v16 + 16))
      {
        v23 = *v12;
        v22 = v12[1];
        sub_1C7551F3C();
        sub_1C75505AC();
        v24 = sub_1C7551FAC();
        v25 = ~(-1 << *(v16 + 32));
        while (1)
        {
          v26 = v24 & v25;
          if (((*(v16 + 56 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
          {
            break;
          }

          v27 = (*(v16 + 48) + 16 * v26);
          if (*v27 != v23 || v27[1] != v22)
          {
            v29 = sub_1C7551DBC();
            v24 = v26 + 1;
            if ((v29 & 1) == 0)
            {
              continue;
            }
          }

          sub_1C73BE7A4(v12, v34, type metadata accessor for Hastings.Asset);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C716E298(0, *(v18 + 16) + 1, 1);
            v18 = v39;
          }

          v32 = *(v18 + 16);
          v31 = *(v18 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1C716E298(v31 > 1, v32 + 1, 1);
            v18 = v39;
          }

          *(v18 + 16) = v32 + 1;
          sub_1C73BE7A4(v34, v18 + v20 + v32 * v21, type metadata accessor for Hastings.Asset);
          result = v35;
          v17 = v38;
          goto LABEL_3;
        }
      }

      sub_1C73BE750();
      v19 = v38;
      result = v35;
    }
  }

  else
  {
    sub_1C75504FC();
  }

  type metadata accessor for Hastings.Feature();
  sub_1C73BD984(&qword_1EC216910, 255, type metadata accessor for Hastings.Asset);
  sub_1C73BD984(&qword_1EC21B238, 255, type metadata accessor for Hastings.Feature);
  sub_1C75504FC();
  sub_1C75504FC();
  return sub_1C754F44C();
}

uint64_t sub_1C73BCF18(void *a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  v59 = type metadata accessor for Hastings.Asset(0);
  v62 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - v10;
  v12 = type metadata accessor for Hastings.Feature();
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  sub_1C712A774(a2, v11, &qword_1EC216A40);
  v17 = *&v11[*(v9 + 56)];
  v66 = v16;
  sub_1C73BE7A4(v11, v16, type metadata accessor for Hastings.Feature);
  v67 = 0;
  v18 = 0;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 56);
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v23 = v21;
LABEL_10:
    v21 = (v23 - 1) & v23;
    if (*(a3 + 16))
    {
      v25 = (*(v17 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v23)))));
      v26 = *v25;
      v27 = v25[1];
      sub_1C75504FC();
      v28 = sub_1C6F78124(v26, v27);
      v30 = v29;

      if (v30)
      {
        v31 = *(a3 + 56);
        v57 = *(v62 + 72);
        v32 = v31 + v57 * v28;
        v33 = v61;
        sub_1C73BE6F4(v32, v61, type metadata accessor for Hastings.Asset);
        sub_1C73BE7A4(v33, v65, type metadata accessor for Hastings.Asset);
        sub_1C73BE6F4(v66, v63, type metadata accessor for Hastings.Feature);
        sub_1C6F6E5B4(v67);
        v34 = v64;
        swift_isUniquelyReferenced_nonNull_native();
        v35 = *v34;
        v68 = v35;
        sub_1C6FC292C();
        v67 = v36;
        v37 = v35[2];
        LODWORD(v58) = v38;
        if (__OFADD__(v37, (v38 & 1) == 0))
        {
          goto LABEL_27;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B268);
        v39 = sub_1C7551A2C();
        v40 = v68;
        if (v39)
        {
          sub_1C6FC292C();
          v43 = v58;
          if ((v58 & 1) != (v42 & 1))
          {
            goto LABEL_29;
          }

          v44 = v41;
        }

        else
        {
          v44 = v67;
          v43 = v58;
        }

        *v64 = v40;
        if ((v43 & 1) == 0)
        {
          v40[(v44 >> 6) + 8] |= 1 << v44;
          sub_1C73BE6F4(v65, v40[6] + v44 * v57, type metadata accessor for Hastings.Asset);
          *(v40[7] + 8 * v44) = MEMORY[0x1E69E7CC0];
          v45 = v40[2];
          v46 = __OFADD__(v45, 1);
          v47 = v45 + 1;
          if (v46)
          {
            goto LABEL_28;
          }

          v40[2] = v47;
        }

        v48 = v40[7];
        v49 = *(v48 + 8 * v44);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v48 + 8 * v44) = v49;
        v67 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C6FB2E64(0, *(v49 + 16) + 1, 1, v49);
          v49 = v54;
          *(v48 + 8 * v44) = v54;
        }

        v52 = *(v49 + 16);
        v51 = *(v49 + 24);
        v58 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          sub_1C6FB2E64(v51 > 1, v58, 1, v49);
          *(v48 + 8 * v67) = v55;
        }

        sub_1C73BE750();
        v53 = *(v48 + 8 * v67);
        *(v53 + 16) = v58;
        sub_1C73BE7A4(v63, v53 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v52, type metadata accessor for Hastings.Feature);
        v67 = sub_1C6F86C50;
      }
    }
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      sub_1C73BE750();

      return sub_1C6F6E5B4(v67);
    }

    v23 = *(v17 + 56 + 8 * v24);
    ++v18;
    if (v23)
    {
      v18 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C73BD4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  *(v4 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_isDone) = 0;
  v12 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_cluster;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5 + v12, a1, v13);
  v15 = sub_1C754F46C();
  v16 = sub_1C72B9418(v15, a4);

  *(v5 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_electedAssets) = v16;
  sub_1C73D1850();
  v17 = sub_1C75504FC();
  sub_1C73B9B70(v17, v11);

  (*(v14 + 8))(a1, v13);
  sub_1C73BE7A4(v11, v5 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_electedAssetIterator, type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator);
  return v5;
}

uint64_t sub_1C73BD698()
{
  v1 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_cluster;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);

  sub_1C73BE750();
  return v0;
}

uint64_t sub_1C73BD730()
{
  sub_1C73BD698();

  return swift_deallocClassInstance();
}

void sub_1C73BD7B0()
{
  sub_1C73BD890();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C73BD890()
{
  if (!qword_1EC21B230)
  {
    type metadata accessor for Hastings.Asset(255);
    type metadata accessor for Hastings.Feature();
    sub_1C73BD984(&qword_1EC216910, 255, type metadata accessor for Hastings.Asset);
    sub_1C73BD984(&qword_1EC21B238, 255, type metadata accessor for Hastings.Feature);
    v0 = sub_1C754F47C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC21B230);
    }
  }
}

uint64_t sub_1C73BD984(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C73BD9CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000025 && 0x80000001C75AE250 == a2)
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

uint64_t sub_1C73BDA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73BD9CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C73BDA98(uint64_t a1)
{
  v2 = sub_1C73BE6A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73BDAD4(uint64_t a1)
{
  v2 = sub_1C73BE6A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73BDB10()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C73BDB48(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B270);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C73BE6A0();
  sub_1C755200C();
  v11[1] = *(v2 + 16);
  type metadata accessor for Hastings.ClusterAssetElector.DiagnosticReporter();
  sub_1C73BD984(&qword_1EC21B280, 255, type metadata accessor for Hastings.ClusterAssetElector.DiagnosticReporter);
  sub_1C7551D2C();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C73BDCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v26[14] = *(a1 + 46);
  v7 = *&v26[14];
  v8 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v8;
  *v26 = *(a1 + 32);
  v9 = *v26;
  *(v3 + 16) = v25[0];
  *(v3 + 32) = v8;
  *(v3 + 48) = v9;
  *(v3 + 62) = v7;
  *(v3 + 72) = 1;
  *(v3 + 80) = 4;
  *(v3 + 88) = 0;
  *(v3 + 89) = 257;
  v10 = v26[20];
  v11 = objc_opt_self();
  sub_1C7035CB0(v25, &v16);
  v12 = [v11 promotePlayableAssetsInStories];
  v16 = 257;
  v17 = 10;
  v18 = 0;
  v19 = 257;
  v20 = v10;
  v21 = vdupq_n_s64(0x3F847AE147AE147BuLL);
  v22 = v21;
  v23 = v12;
  v24 = 0;
  if (a3)
  {
  }

  type metadata accessor for Hastings.ClusterAssetElector(0);
  swift_allocObject();
  Hastings.ClusterAssetElector.init(configuration:curationOptions:diagnosticReporter:)();
  v14 = v13;

  *(v4 + 96) = v14;
  *(v4 + 104) = a2;
  return v4;
}

uint64_t sub_1C73BDE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Hastings.ClusterAssetElector.ElectedAssetIterator.next()();
  swift_endAccess();
  v4 = type metadata accessor for Hastings.Asset(0);
  result = __swift_getEnumTagSinglePayload(a2, 1, v4);
  *(a1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_isDone) = result == 1;
  return result;
}

uint64_t sub_1C73BDED8()
{
  OUTLINED_FUNCTION_300();
  v2 = sub_1C754DFFC();
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  sub_1C754DFEC();
  v10 = &type metadata for Random.Arc4Random;
  v11 = sub_1C7054F1C();
  Random.Arc4Random.init(seed:)(v6, v9);

  v7 = sub_1C73B994C(v0, v9, v1);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

void sub_1C73BDF90()
{
  v1 = OUTLINED_FUNCTION_300();
  v2 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(v1);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  if (v0 >> 62)
  {
    v7 = sub_1C75516BC();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v9 = OUTLINED_FUNCTION_295();
        v10 = MEMORY[0x1CCA5DDD0](v9);
      }

      else
      {
        v10 = *(v0 + 8 * v8 + 32);
      }

      ++v8;
      v11 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_electedAssetIterator;
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      sub_1C73BE6F4(v10 + v11, v6, type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator);
      sub_1C741999C();

      sub_1C73BE750();
    }

    while (v7 != v8);
  }
}

uint64_t sub_1C73BE0D4()
{

  return v0;
}

uint64_t sub_1C73BE144()
{
  sub_1C73BE0D4();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t _s24RoundRobinElectionHelperC13ConfigurationVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[19])
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

uint64_t _s24RoundRobinElectionHelperC13ConfigurationVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL sub_1C73BE388()
{
  v1 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_electedAssets;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  return v2 >= sub_1C754F43C();
}

uint64_t sub_1C73BE400()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  return sub_1C75504FC();
}

uint64_t sub_1C73BE444()
{
  v1 = OUTLINED_FUNCTION_300();
  v2 = type metadata accessor for Hastings.Asset(v1);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_78();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C73BE6F4(v0, v6, type metadata accessor for Hastings.Asset);
  swift_beginAccess();
  sub_1C70F0914();
  sub_1C73BE750();
  return swift_endAccess();
}

uint64_t sub_1C73BE534@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings20ClusterElectionState_cluster;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C73BE630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B248);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C73BE6A0()
{
  result = qword_1EC21B278;
  if (!qword_1EC21B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B278);
  }

  return result;
}

uint64_t sub_1C73BE6F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

uint64_t sub_1C73BE750()
{
  v1 = OUTLINED_FUNCTION_300();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C73BE7A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_90();
  v5(v4);
  return a2;
}

unint64_t sub_1C73BE800()
{
  result = qword_1EC21B298;
  if (!qword_1EC21B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B298);
  }

  return result;
}

unint64_t sub_1C73BE854()
{
  result = qword_1EC21B2A8;
  if (!qword_1EC21B2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B2A8);
  }

  return result;
}

uint64_t sub_1C73BE8B8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1C73BE934()
{
  result = qword_1EC21B2C0;
  if (!qword_1EC21B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216FA8);
    sub_1C6FC18BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B2C0);
  }

  return result;
}

_BYTE *_s7ElectorV18DiagnosticReporterC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s24RoundRobinElectionHelperC18DiagnosticReporterC10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C73BEB4C()
{
  result = qword_1EC21B2D0;
  if (!qword_1EC21B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B2D0);
  }

  return result;
}

unint64_t sub_1C73BEBA4()
{
  result = qword_1EC21B2D8;
  if (!qword_1EC21B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B2D8);
  }

  return result;
}

unint64_t sub_1C73BEBFC()
{
  result = qword_1EC21B2E0;
  if (!qword_1EC21B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B2E0);
  }

  return result;
}

unint64_t sub_1C73BEC54()
{
  result = qword_1EC21B2E8;
  if (!qword_1EC21B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B2E8);
  }

  return result;
}

unint64_t sub_1C73BECAC()
{
  result = qword_1EC21B2F0;
  if (!qword_1EC21B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B2F0);
  }

  return result;
}

unint64_t sub_1C73BED04()
{
  result = qword_1EC21B2F8;
  if (!qword_1EC21B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B2F8);
  }

  return result;
}

void OUTLINED_FUNCTION_21_55()
{

  sub_1C6F7ED9C();
}

void sub_1C73BED7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v19 = a1;
  v11 = sub_1C6FB6304();
  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {

      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1CCA5DDD0](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v13 = *(a2 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v18 = v13;
    sub_1C73C0FAC(&v19, &v18, a3, a4, a5, a6, a7);

    if (v7)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1C73BEEC0(uint64_t a1, uint64_t a2, id *a3)
{
  v3 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_18;
  }

  if (v3)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C716EDB0();
    if (a2 < a1 || (v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    v6 = 0;
    v7 = a1 - 1;
    while (v6 < v3)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }

      v9 = [*a3 nextUnsignedIntegerLessThan_];
      if (v9 > 0xFF)
      {
        goto LABEL_16;
      }

      v10 = v9;
      v11 = *(v13 + 16);
      if (v11 >= *(v13 + 24) >> 1)
      {
        sub_1C716EDB0();
      }

      *(v13 + 16) = v11 + 1;
      *(v13 + v11 + 32) = v10;
      ++v6;
      if ((v7 + v6) >= a2)
      {
        goto LABEL_17;
      }

      if (v8 == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1C73BF00C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_5();
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  sub_1C754D7BC();
  sub_1C6FB5E8C();
  v10 = sub_1C755154C();
  v12 = v11;
  (*(v7 + 8))(v2, v5);
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 == 0xE000000000000000;
  }

  if (v13)
  {

LABEL_10:
    v14 = 1;
    return v14 & 1;
  }

  v14 = sub_1C7551DBC();

  return v14 & 1;
}

PhotosIntelligence::AssetCurationUtilities::Options __swiftcall AssetCurationUtilities.Options.init(useShadowNames:usePersonPromptAnnotations:)(Swift::Bool useShadowNames, Swift::Bool usePersonPromptAnnotations)
{
  *v2 = useShadowNames;
  v2[1] = usePersonPromptAnnotations;
  result.useShadowNames = useShadowNames;
  return result;
}

uint64_t static AssetCurationUtilities.generateCharacterSummaryByCharacterUUID(for:photoLibrary:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  type metadata accessor for PhotoAnalysisMomentGraphService(0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73BF1E8, 0, 0);
}

uint64_t sub_1C73BF1E8()
{
  v52 = v0;
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    if (qword_1EDD09EB8 != -1)
    {
      goto LABEL_43;
    }

    goto LABEL_4;
  }

  v2 = *(v0 + 48);
  v3 = objc_autoreleasePoolPush();
  sub_1C73C0A50(v2, v1, &v51);
  objc_autoreleasePoolPop(v3);
  v11 = v51;
  *(v0 + 72) = v51;
  if (sub_1C6FB6304() <= 0)
  {

    if (qword_1EDD09EB8 != -1)
    {
      OUTLINED_FUNCTION_0_167();
    }

    v42 = sub_1C754FF1C();
    __swift_project_value_buffer(v42, qword_1EDD09EC0);
    v5 = sub_1C754FEEC();
    v6 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "No person or pet from which to get character info";
LABEL_6:
      _os_log_impl(&dword_1C6F5C000, v5, v6, v8, v7, 2u);
      OUTLINED_FUNCTION_109();
    }

LABEL_7:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738);
    sub_1C75504DC();

    OUTLINED_FUNCTION_0_89();
    OUTLINED_FUNCTION_129();

    __asm { BRAA            X2, X16 }
  }

  v12 = [*(v0 + 48) photoAnalysisClient];
  *(v0 + 80) = v12;
  if (!v12)
  {

    if (qword_1EDD09EB8 != -1)
    {
      OUTLINED_FUNCTION_0_167();
    }

    v43 = sub_1C754FF1C();
    __swift_project_value_buffer(v43, qword_1EDD09EC0);
    v44 = sub_1C754FEEC();
    v45 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1C6F5C000, v44, v45, "Unable to get PAD client!", v46, 2u);
      OUTLINED_FUNCTION_109();
    }

    sub_1C73C58D0();
    swift_allocError();
    swift_willThrow();

    OUTLINED_FUNCTION_129();

    __asm { BRAA            X1, X16 }
  }

  v49 = v12;
  v13 = sub_1C6FB6304();
  v14 = 0;
  v50 = MEMORY[0x1E69E7CC0];
  while (v13 != v14)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1CCA5DDD0](v14, v11);
    }

    else
    {
      if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v15 = *(v11 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      OUTLINED_FUNCTION_0_167();
LABEL_4:
      v4 = sub_1C754FF1C();
      __swift_project_value_buffer(v4, qword_1EDD09EC0);
      v5 = sub_1C754FEEC();
      v6 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "No assets from which to get person or pet info";
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    v18 = sub_1C70CAC04(v15);
    v20 = v19;

    ++v14;
    if (v20)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v50 = v23;
      }

      v21 = *(v50 + 16);
      if (v21 >= *(v50 + 24) >> 1)
      {
        sub_1C6FB1814();
        v50 = v24;
      }

      *(v50 + 16) = v21 + 1;
      v22 = v50 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v20;
      v14 = v17;
    }
  }

  v25 = objc_allocWithZone(MEMORY[0x1E69BE620]);
  v26 = v49;
  v27 = [v25 initWithServiceProvider_];
  if (qword_1EC213F98 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 64);
  v29 = sub_1C754FF1C();
  *(v0 + 88) = v29;
  v30 = __swift_project_value_buffer(v29, qword_1EC219F58);
  (*(*(v29 - 8) + 16))(v28, v30, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
  v32 = (v28 + *(v31 + 28));
  v33 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v34 = [v33 processName];

  v35 = sub_1C755068C();
  v37 = v36;

  *v32 = v35;
  v32[1] = v37;
  *(v28 + *(v31 + 32)) = v27;
  *(v0 + 96) = sub_1C706D154(v50);
  v38 = swift_task_alloc();
  *(v0 + 104) = v38;
  *v38 = v0;
  v38[1] = sub_1C73BF7E8;
  OUTLINED_FUNCTION_129();

  return PhotoAnalysisMomentGraphService.requestCharacterCurationInfo(for:)(v39);
}

uint64_t sub_1C73BF7E8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {

    v5 = sub_1C73BFBFC;
  }

  else
  {
    v5 = sub_1C73BF938;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C73BF938()
{
  v1 = v0[16];
  sub_1C754DB8C();
  swift_allocObject();
  sub_1C754DB7C();
  sub_1C73C5924();
  sub_1C754DB5C();
  if (v1)
  {
    v3 = v0[14];
    v2 = v0[15];
    v4 = v0[10];
    sub_1C6FF6930(v0[8]);

    sub_1C6FC1640(v3, v2);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[2];
    v8 = v0[3];
    v9 = v0[4];
    if (qword_1EDD09EB8 != -1)
    {
      OUTLINED_FUNCTION_0_167();
    }

    __swift_project_value_buffer(v0[11], qword_1EDD09EC0);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v10 = sub_1C754FEEC();
    v11 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218496;
      *(v12 + 4) = *(v7 + 16);

      *(v12 + 12) = 2048;
      *(v12 + 14) = *(v8 + 16);

      *(v12 + 22) = 2048;
      *(v12 + 24) = *(v9 + 16);

      _os_log_impl(&dword_1C6F5C000, v10, v11, "Received %ld confirmed relationships, %ld myPet UUIDs, and %ld favorited character UUIDs", v12, 0x20u);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[10];
    v18 = v0[8];
    static AssetCurationUtilities.generateCharacterSummaryByCharacterUUID(from:personRelationshipByUUID:myPetUUIDs:favoritedCharacterUUIDs:)(v0[9], v7, v8, v9);

    sub_1C6FC1640(v14, v13);

    sub_1C6FF6930(v18);

    v16 = OUTLINED_FUNCTION_0_89();

    return v17(v16);
  }
}

uint64_t sub_1C73BFBFC()
{
  v1 = *(v0 + 64);

  sub_1C6FF6930(v1);

  v2 = *(v0 + 8);

  return v2();
}

double sub_1C73BFC74()
{
  result = 0.6;
  qword_1EC21B300 = 0x3FE3333333333333;
  return result;
}

double static AssetCurationUtilities.minimumCurationScoreForBackgroundSuggestionPlayback.getter()
{
  if (qword_1EC214080 != -1)
  {
    swift_once();
  }

  return *&qword_1EC21B300;
}

uint64_t sub_1C73BFCDC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD09EC0);
  __swift_project_value_buffer(v0, qword_1EDD09EC0);
  return sub_1C754FEFC();
}

uint64_t static AssetCurationUtilities.suggestedAssetsForBackgroundPlayback(storyPhotoLibraryContext:eventRecorder:useDateRandomSeed:)(uint64_t a1, void *a2, char a3)
{
  v6 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = objc_autoreleasePoolPush();
  sub_1C73BFDF8(a2, v6, v8, v7, v3, a3, v3, &v11);
  objc_autoreleasePoolPop(v9);
  return v11;
}

uint64_t sub_1C73BFDF8@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v71 = a7;
  v78 = a4;
  v77 = a3;
  v74 = a8;
  v12 = sub_1C754F38C();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v73 = v14;
  sub_1C754F1CC();
  if (qword_1EDD09EB8 != -1)
  {
    swift_once();
  }

  v15 = sub_1C754FF1C();
  __swift_project_value_buffer(v15, qword_1EDD09EC0);
  v16 = sub_1C754FEEC();
  v17 = sub_1C755117C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a5;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "Beginning fetching assets for background suggestion playback.", v19, 2u);
    v20 = v19;
    a5 = v18;
    MEMORY[0x1CCA5F8E0](v20, -1, -1);
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E6978B08]) initWithPhotoLibrary_];
  v22 = [v21 personUUIDsWithNegativeFeedback];

  v23 = sub_1C7550F8C();
  static AssetCurationUtilities.generateRandomUUIDForPartition(useDateRandomSeed:)(a6 & 1);
  v25 = v24;
  v27 = v26;
  v28 = [a2 librarySpecificFetchOptions];
  v29 = v77;
  [v28 setSharingFilter_];
  if (([objc_opt_self() useStillAssetsOnlyInBackground] & 1) == 0)
  {
    v70 = v28;
    v79 = a2;
    v80 = v29;
    v81 = v78;
    v68 = v25;
    v72 = a5;
    v69 = static AssetCurationUtilities.fetchAssetUUIDsForBackgroundSuggestionPlayback(with:isLivePhoto:negativeFeedbackPersonUUIDs:fetchLimit:eventRecorder:storyPhotoLibraryContext:randomUUIDForPartition:)(1, 0, v23, 10, a1, &v79, v25, v27);
    v34 = *(v69 + 16);
    v35 = sub_1C754FEEC();
    v36 = sub_1C75511BC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = v34;
      _os_log_impl(&dword_1C6F5C000, v35, v36, "Finished fetching %ld videos for background suggestion playback.", v37, 0xCu);
      MEMORY[0x1CCA5F8E0](v37, -1, -1);
    }

    if (v34 > 9)
    {

      v60 = v70;
      v59 = sub_1C73C0834(v69, v70);

      goto LABEL_28;
    }

    v38 = 10 - v34;
    v39 = sub_1C754FEEC();
    v40 = sub_1C75511BC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = v38;
      _os_log_impl(&dword_1C6F5C000, v39, v40, "Done fetching videos, now trying to fetch %ld live photos for background suggestion playback.", v41, 0xCu);
      MEMORY[0x1CCA5F8E0](v41, -1, -1);
    }

    v79 = a2;
    v80 = v77;
    v81 = v78;
    v67 = v38;
    v42 = static AssetCurationUtilities.fetchAssetUUIDsForBackgroundSuggestionPlayback(with:isLivePhoto:negativeFeedbackPersonUUIDs:fetchLimit:eventRecorder:storyPhotoLibraryContext:randomUUIDForPartition:)(0, 1u, v23, v38, a1, &v79, v68, v27);
    v43 = *(v42 + 16);
    v44 = sub_1C754FEEC();
    v45 = sub_1C75511BC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v66 = v42;
      v47 = v46;
      *v46 = 134217984;
      *(v46 + 4) = v43;
      _os_log_impl(&dword_1C6F5C000, v44, v45, "Finished fetching %ld live photos for background suggestion playback.", v46, 0xCu);
      v48 = v47;
      v42 = v66;
      MEMORY[0x1CCA5F8E0](v48, -1, -1);
    }

    v67 -= v43;
    if (v67 < 1)
    {

      v79 = v69;
      sub_1C6FD2568(v42);
      v61 = v79;
    }

    else
    {
      v49 = sub_1C754FEEC();
      v50 = sub_1C75511BC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v66 = v42;
        v52 = v51;
        *v51 = 134217984;
        *(v51 + 4) = v67;
        _os_log_impl(&dword_1C6F5C000, v49, v50, "Done fetching live photos, now trying to fetch %ld still photos for background suggestion playback.", v51, 0xCu);
        v53 = v52;
        v42 = v66;
        MEMORY[0x1CCA5F8E0](v53, -1, -1);
      }

      v79 = a2;
      v80 = v77;
      v81 = v78;
      v54 = static AssetCurationUtilities.fetchAssetUUIDsForBackgroundSuggestionPlayback(with:isLivePhoto:negativeFeedbackPersonUUIDs:fetchLimit:eventRecorder:storyPhotoLibraryContext:randomUUIDForPartition:)(0, 0, v23, v67, a1, &v79, v68, v27);

      v55 = *(v54 + 16);
      v56 = sub_1C754FEEC();
      v57 = sub_1C75511BC();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 134217984;
        *(v58 + 4) = v55;
        _os_log_impl(&dword_1C6F5C000, v56, v57, "Finished fetching %ld still photos for background suggestion playback.", v58, 0xCu);
        MEMORY[0x1CCA5F8E0](v58, -1, -1);
      }

      if (v67 - v55 == 10)
      {

        v79 = a2;
        v80 = v77;
        v81 = v78;
        v59 = static AssetCurationUtilities.assetsForBackgroundSuggestionPlaybackFallback(fetchLimit:eventRecorder:storyPhotoLibraryContext:)(10, a1, &v79);

        goto LABEL_28;
      }

      v82 = v69;
      sub_1C6FD2568(v42);
      sub_1C6FD2568(v54);
      v61 = v82;
    }

    v62 = v70;
    v59 = sub_1C73C0834(v61, v70);

    goto LABEL_28;
  }

  v79 = a2;
  v80 = v29;
  v81 = v78;
  v30 = static AssetCurationUtilities.fetchAssetUUIDsForBackgroundSuggestionPlayback(with:isLivePhoto:negativeFeedbackPersonUUIDs:fetchLimit:eventRecorder:storyPhotoLibraryContext:randomUUIDForPartition:)(0, 0, v23, 10, a1, &v79, v25, v27);

  sub_1C75504FC();
  v31 = sub_1C754FEEC();
  v32 = sub_1C75511BC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = *(v30 + 16);

    _os_log_impl(&dword_1C6F5C000, v31, v32, "Finished fetching %ld still photos for background suggestion playback.", v33, 0xCu);
    MEMORY[0x1CCA5F8E0](v33, -1, -1);
  }

  else
  {
  }

  v59 = sub_1C73C0834(v30, v28);

LABEL_28:
  *v74 = v59;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v63 = v73;
  sub_1C754F1AC();
  return (*(v75 + 8))(v63, v76);
}

void static AssetCurationUtilities.generateRandomUUIDForPartition(useDateRandomSeed:)(char a1)
{
  v3 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_5();
  sub_1C73C4D08(a1);
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
    v9 = v8;
    sub_1C73C5360(&v9);
    sub_1C754DF8C();
    (*(v5 + 8))(v1, v3);
  }
}

uint64_t static AssetCurationUtilities.fetchAssetUUIDsForBackgroundSuggestionPlayback(with:isLivePhoto:negativeFeedbackPersonUUIDs:fetchLimit:eventRecorder:storyPhotoLibraryContext:randomUUIDForPartition:)(int a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v14 = *a6;
  v15 = *(a6 + 16);
  v16 = *(a6 + 8);
  v17 = objc_autoreleasePoolPush();
  sub_1C73C35A8(a5, v14, v16, v15, a4, a7, a8, a1, &v21, a2, v8, a3);
  objc_autoreleasePoolPop(v17);
  return v21;
}

id sub_1C73C0834(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  result = sub_1C6FCA158(a1, a2, v4);
  if (result)
  {
    v6 = result;
    if (qword_1EDD09EB8 != -1)
    {
      swift_once();
    }

    v7 = sub_1C754FF1C();
    __swift_project_value_buffer(v7, qword_1EDD09EC0);
    sub_1C75504FC();
    v8 = sub_1C754FEEC();
    v9 = sub_1C75511BC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      v12 = MEMORY[0x1CCA5D090](a1, MEMORY[0x1E69E6158]);
      v14 = sub_1C6F765A4(v12, v13, &v15);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1C6F5C000, v8, v9, "MC entry card background asset UUIDs: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
      MEMORY[0x1CCA5F8E0](v10, -1, -1);
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AssetCurationUtilities.assetsForBackgroundSuggestionPlaybackFallback(fetchLimit:eventRecorder:storyPhotoLibraryContext:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = objc_autoreleasePoolPush();
  sub_1C73C4A20(a2, v5, v6, a1, &v9);
  objc_autoreleasePoolPop(v7);
  return v9;
}

void sub_1C73C0A50(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 librarySpecificFetchOptions];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = sub_1C6FCA158(a2, v6, v7);

  if (v9)
  {
    v10 = [a1 librarySpecificFetchOptions];
    [v10 setPersonContext_];
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    sub_1C7551EFC();
    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
    sub_1C7551EFC();
    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
    sub_1C7082AAC(v21, v10);
    v11 = [objc_opt_self() fetchPersonsInAssetsFetchResult:v9 options:v10];
    if (v11 && (v12 = v11, v13 = [v11 fetchedObjects], v12, v13))
    {
      sub_1C6F65BE8(0, &qword_1EDD100F0);
      v14 = sub_1C7550B5C();
    }

    else
    {
      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v15 = sub_1C754FF1C();
      __swift_project_value_buffer(v15, qword_1EDD09EC0);
      v13 = sub_1C754FEEC();
      v16 = sub_1C75511BC();
      if (os_log_type_enabled(v13, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1C6F5C000, v13, v16, "Didn't get any people or pets from assets", v17, 2u);
        MEMORY[0x1CCA5F8E0](v17, -1, -1);
      }

      v14 = MEMORY[0x1E69E7CC0];
      v8 = v9;
    }
  }

  else
  {
    if (qword_1EDD09EB8 != -1)
    {
      swift_once();
    }

    v18 = sub_1C754FF1C();
    __swift_project_value_buffer(v18, qword_1EDD09EC0);
    v13 = sub_1C754FEEC();
    v19 = sub_1C755119C();
    if (os_log_type_enabled(v13, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C6F5C000, v13, v19, "Unable to fetch assets", v20, 2u);
      MEMORY[0x1CCA5F8E0](v20, -1, -1);
    }

    v14 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v14;
}

uint64_t static AssetCurationUtilities.generateCharacterSummaryByCharacterUUID(from:personRelationshipByUUID:myPetUUIDs:favoritedCharacterUUIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x1E69E7CC8];
  v23 = MEMORY[0x1E69E7CC8];
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C73BED7C(v9, a1, v4, a2, a4, &v23, a3);
  v11 = v10;
  if (qword_1EDD09EB8 != -1)
  {
    OUTLINED_FUNCTION_0_167();
  }

  v12 = sub_1C754FF1C();
  __swift_project_value_buffer(v12, qword_1EDD09EC0);
  v13 = sub_1C754FEEC();
  v14 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    swift_beginAccess();
    sub_1C75504FC();
    v17 = sub_1C75504BC();
    v19 = v18;

    v20 = sub_1C6F765A4(v17, v19, &v22);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1C6F5C000, v13, v14, "detectionIndexByTypeString: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  return v11;
}

void sub_1C73C0FAC(uint64_t a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v11 = *a2;
  switch([*a2 detectionType])
  {
    case 0u:
    case 2u:
      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v12 = sub_1C754FF1C();
      __swift_project_value_buffer(v12, qword_1EDD09EC0);
      v13 = v11;
      v14 = sub_1C754FEEC();
      v15 = sub_1C755119C();
      goto LABEL_20;
    case 1u:
      v27 = sub_1C70CAC04(v11);
      if (!v28)
      {
        if (qword_1EDD09EB8 != -1)
        {
          swift_once();
        }

        v50 = sub_1C754FF1C();
        __swift_project_value_buffer(v50, qword_1EDD09EC0);
        v51 = v11;
        v14 = sub_1C754FEEC();
        v38 = sub_1C755119C();

        if (os_log_type_enabled(v14, v38))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412290;
          *(v34 + 4) = v51;
          *v35 = v51;
          v52 = v51;
          v40 = "Unable to get person uuid from person %@";
          goto LABEL_22;
        }

        goto LABEL_25;
      }

      v29 = v27;
      v30 = v28;
      sub_1C73C1714(v11, v27, v28, a4, a5, a6, &v69);
      v31 = v70;
      if (v70 != 1)
      {
        v53 = v71;
        v54 = v69;
        v61 = v72;
        v63 = v73 >> 16;
        v74 = HIDWORD(v73);
        v55 = v73 & 1;
        v56 = (v73 >> 8) & 1;
        v58 = HIBYTE(v73) & 1;
        v59 = HIWORD(v73) & 1;
        v67 = &type metadata for PersonSummary;
        v68 = sub_1C73C66F0();
        v57 = swift_allocObject();
        v64 = v57;
        *(v57 + 16) = v54;
        *(v57 + 24) = v31;
        *(v57 + 32) = v53;
        *(v57 + 40) = v61;
        *(v57 + 48) = v55;
        *(v57 + 49) = v56;
        *(v57 + 50) = v63;
        *(v57 + 52) = v74;
        *(v57 + 54) = v59;
        *(v57 + 55) = v58;
        goto LABEL_37;
      }

      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v32 = sub_1C754FF1C();
      __swift_project_value_buffer(v32, qword_1EDD09EC0);
      sub_1C75504FC();
      v14 = sub_1C754FEEC();
      v33 = sub_1C755119C();

      if (os_log_type_enabled(v14, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v69 = v35;
        *v34 = 136315138;
        v36 = sub_1C6F765A4(v29, v30, &v69);

        *(v34 + 4) = v36;
        _os_log_impl(&dword_1C6F5C000, v14, v33, "Unable to create personSummary for personUUID %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        goto LABEL_23;
      }

      goto LABEL_31;
    case 3u:
    case 4u:
      v16 = sub_1C70CAC04(v11);
      if (!v17)
      {
        if (qword_1EDD09EB8 != -1)
        {
          swift_once();
        }

        v41 = sub_1C754FF1C();
        __swift_project_value_buffer(v41, qword_1EDD09EC0);
        v42 = v11;
        v14 = sub_1C754FEEC();
        v38 = sub_1C755119C();

        if (!os_log_type_enabled(v14, v38))
        {
          goto LABEL_25;
        }

        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v42;
        *v35 = v42;
        v43 = v42;
        v40 = "Unable to get pet uuid from pet %@";
LABEL_22:
        _os_log_impl(&dword_1C6F5C000, v14, v38, v40, v34, 0xCu);
        sub_1C7030CDC(v35, &qword_1EC215190);
LABEL_23:
        MEMORY[0x1CCA5F8E0](v35, -1, -1);
        v26 = v34;
        goto LABEL_24;
      }

      v18 = v16;
      v19 = v17;
      sub_1C73C1BC8(v11, v16, v17, a7, a5, a6, &v64);
      v20 = v65;
      if (v65 == 1)
      {
        if (qword_1EDD09EB8 != -1)
        {
          swift_once();
        }

        v21 = sub_1C754FF1C();
        __swift_project_value_buffer(v21, qword_1EDD09EC0);
        sub_1C75504FC();
        v14 = sub_1C754FEEC();
        v22 = sub_1C755119C();

        if (!os_log_type_enabled(v14, v22))
        {
LABEL_31:

          goto LABEL_25;
        }

        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v69 = v24;
        *v23 = 136315138;
        v25 = sub_1C6F765A4(v18, v19, &v69);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_1C6F5C000, v14, v22, "Unable to create petSummary for petUUID %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
        v26 = v23;
LABEL_24:
        MEMORY[0x1CCA5F8E0](v26, -1, -1);
LABEL_25:

        return;
      }

      v74 = v67;
      v60 = v66;
      v44 = v64;
      v62 = WORD1(v68);
      v45 = v68 & 1;
      v46 = (v68 >> 8) & 1;
      v47 = BYTE4(v68) & 1;
      v72 = &type metadata for PetSummary;
      v73 = sub_1C73C669C();
      v48 = swift_allocObject();
      v69 = v48;
      *(v48 + 16) = v44;
      *(v48 + 24) = v20;
      v49 = v74;
      *(v48 + 32) = v60;
      *(v48 + 40) = v49;
      *(v48 + 48) = v45;
      *(v48 + 49) = v46;
      *(v48 + 50) = v62;
      *(v48 + 52) = v47;
LABEL_37:
      sub_1C709B5C8();
      return;
    default:
      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v37 = sub_1C754FF1C();
      __swift_project_value_buffer(v37, qword_1EDD09EC0);
      v13 = v11;
      v14 = sub_1C754FEEC();
      v15 = sub_1C75511AC();
LABEL_20:
      v38 = v15;

      if (!os_log_type_enabled(v14, v38))
      {
        goto LABEL_25;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v13;
      *v35 = v13;
      v39 = v13;
      v40 = "Unknown detection type for PHPerson %@";
      goto LABEL_22;
  }
}

double sub_1C73C1714@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = [a1 ageType];
  if ([a1 verifiedType] - 1 > 1)
  {
    v27 = (v14 << 32) | 0x120000;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
LABEL_14:
    *(a7 + 32) = v27;
    return result;
  }

  v47 = sub_1C73C5444(a1);
  v49 = v15;
  if (*(a4 + 16) && (v16 = sub_1C6F78124(a2, a3), (v17 & 1) != 0) && (v18 = *(a4 + 56), v19 = *(v18 + v16), v19 != 18))
  {
    if (sub_1C6FA0848(*(v18 + v16), 2))
    {
      v20 = 0x1000000000000;
    }

    else
    {
      v20 = 0;
    }

    v50 = v19;
    v21 = sub_1C6FA0848(v19, 11);
    v22 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 1;
    v50 = 18;
  }

  v48 = a6;
  v45 = sub_1C7009C30(a2, a3, a5);
  v46 = v20;
  if ((v22 & 1) == 0)
  {
    v24 = v21 ^ 1;
    LOBYTE(v51) = v50;
    v26 = StoryPersonRelationshipType.rawValue.getter();
    v25 = v29;
    v23 = 256;
LABEL_11:
    v30 = sub_1C73C561C(v26, v25, v24 & 1, (v21 & 1) == 0, v48);
    v32 = v31;

    v33 = 0x100000000000000;
    if ((v21 & 1) == 0)
    {
      v33 = 0;
    }

    *a7 = v47;
    *(a7 + 8) = v49;
    v27 = v23 | v45 & 1 | (v50 << 16) | (v14 << 32) | v46 | v33;
    *(a7 + 16) = v30;
    *(a7 + 24) = v32;
    goto LABEL_14;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0xE400000000000000;
  v26 = 2036490594;
  switch(v14)
  {
    case 0:
      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v26 = 0x6E6F73726570;
      v39 = sub_1C754FF1C();
      __swift_project_value_buffer(v39, qword_1EDD09EC0);
      sub_1C75504FC();
      v40 = sub_1C754FEEC();
      v41 = sub_1C755119C();

      v42 = v40;
      if (os_log_type_enabled(v40, v41))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v51 = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_1C6F765A4(a2, a3, &v51);
        _os_log_impl(&dword_1C6F5C000, v42, v41, "ageType not set for personUUID %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x1CCA5F8E0](v44, -1, -1);
        MEMORY[0x1CCA5F8E0](v43, -1, -1);
      }

      else
      {
      }

      v23 = 0;
      v24 = 0;
      v25 = 0xE600000000000000;
      goto LABEL_11;
    case 1:
      goto LABEL_11;
    case 2:
      v23 = 0;
      v24 = 0;
      v25 = 0xE500000000000000;
      v26 = 0x646C696863;
      goto LABEL_11;
    case 3:
    case 4:
    case 5:
      v23 = 0;
      v24 = 0;
      v25 = 0xE600000000000000;
      v26 = 0x6E6F73726570;
      goto LABEL_11;
    default:

      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v34 = sub_1C754FF1C();
      __swift_project_value_buffer(v34, qword_1EDD09EC0);
      sub_1C75504FC();
      v35 = sub_1C754FEEC();
      v36 = sub_1C75511AC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v51 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_1C6F765A4(a2, a3, &v51);
        _os_log_impl(&dword_1C6F5C000, v35, v36, "ageType not set for personUUID %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1CCA5F8E0](v38, -1, -1);
        MEMORY[0x1CCA5F8E0](v37, -1, -1);
      }

      result = 0.0;
      *a7 = xmmword_1C756A560;
      *(a7 + 24) = 0;
      *(a7 + 32) = 0;
      *(a7 + 16) = 0;
      break;
  }

  return result;
}

double sub_1C73C1BC8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = [a1 detectionType];
  if ([a1 verifiedType] - 1 > 1)
  {
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 36) = 0;
    *(a7 + 32) = v14 << 16;
    return result;
  }

  v15 = sub_1C73C5848(a1);
  v17 = v16;
  v18 = sub_1C7009C30(a2, a3, a4);
  v19 = sub_1C7009C30(a2, a3, a5);
  if (v14 < 3)
  {

    if (qword_1EDD09EB8 != -1)
    {
      swift_once();
    }

    v20 = sub_1C754FF1C();
    __swift_project_value_buffer(v20, qword_1EDD09EC0);
    sub_1C75504FC();
    v21 = sub_1C754FEEC();
    v22 = sub_1C755119C();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1C6F765A4(a2, a3, &v36);
    v25 = "Trying to create petSummary with human/pet/unknown detection type for uuid %s";
LABEL_23:
    _os_log_impl(&dword_1C6F5C000, v21, v22, v25, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1CCA5F8E0](v24, -1, -1);
    MEMORY[0x1CCA5F8E0](v23, -1, -1);
LABEL_24:

    result = 0.0;
    *a7 = xmmword_1C756A560;
    *(a7 + 16) = 0;
    *(a7 + 24) = 0;
    *(a7 + 29) = 0;
    return result;
  }

  v27 = v19;
  if (v14 == 4)
  {
    v28 = 7627107;
  }

  else
  {
    if (v14 != 3)
    {

      if (qword_1EDD09EB8 != -1)
      {
        swift_once();
      }

      v35 = sub_1C754FF1C();
      __swift_project_value_buffer(v35, qword_1EDD09EC0);
      sub_1C75504FC();
      v21 = sub_1C754FEEC();
      v22 = sub_1C75511AC();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_24;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1C6F765A4(a2, a3, &v36);
      v25 = "Trying to create petSummary with unknown detection type for uuid %s";
      goto LABEL_23;
    }

    v28 = 6778724;
  }

  v29 = v18 & 1;
  if (v18)
  {
    v30 = 256;
  }

  else
  {
    v30 = 0;
  }

  if (v18)
  {
    v31 = 0x100000000;
  }

  else
  {
    v31 = 0;
  }

  v32 = sub_1C73C561C(v28, 0xE300000000000000, v29, 1, a6);
  v34 = v33;

  *a7 = v15;
  *(a7 + 8) = v17;
  *(a7 + 16) = v32;
  *(a7 + 24) = v34;
  *(a7 + 36) = (v31 | (v14 << 16)) >> 32;
  *(a7 + 32) = v30 & 0xFFFE | v27 & 1 | (v14 << 16);
  return result;
}

uint64_t PersonSummary.init(name:shadowName:isFavorite:hasConfirmedRelationship:confirmedRelationship:ageType:isMyChild:isMe:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char *a7@<X6>, __int16 a8@<W7>, uint64_t a9@<X8>, char a10, char a11)
{
  v11 = *a7;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 33) = a6;
  *(a9 + 34) = v11;
  *(a9 + 36) = a8;
  *(a9 + 38) = a10;
  *(a9 + 39) = a11;
  return result;
}

uint64_t sub_1C73C2000(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E776F64616873 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001C75AE320 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001C7599CC0 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65707954656761 && a2 == 0xE700000000000000;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C696843794D7369 && a2 == 0xE900000000000064;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 1699574633 && a2 == 0xE400000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C7551DBC();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}