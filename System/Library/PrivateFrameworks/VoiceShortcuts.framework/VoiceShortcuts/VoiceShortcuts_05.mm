uint64_t sub_2310B0B74()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = v2[61];
  *v4 = *v1;
  *(v3 + 496) = v0;

  v6 = v2[60];
  v7 = v2[59];
  v8 = v2[58];
  v9 = v2[57];
  if (v0)
  {
    v10 = v2[60];
  }

  else
  {
    v11 = v2[59];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2310B0D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v53 = *(v16 + 400);
  v54 = *(v16 + 408);
  v17 = *(v16 + 384);
  v52 = *(v16 + 392);
  v18 = *(v16 + 368);
  v19 = *(v16 + 376);
  v20 = *(v16 + 344);
  v21 = *(v16 + 328);
  v22 = *(v16 + 312);
  v24 = *(v16 + 192);
  v23 = *(v16 + 200);
  v25 = *(*(v16 + 352) + *(v16 + 360));
  *(v16 + 176) = *(v16 + 264);
  v55 = sub_231158E68();
  v56 = v26;
  OUTLINED_FUNCTION_92();
  MEMORY[0x231924980](v24, v23);
  *v20 = v55;
  v20[1] = v56;
  v19(v20, *MEMORY[0x277D732B0], v21);
  sub_231158B48();
  v27 = OUTLINED_FUNCTION_21_2();
  v52(v27);
  sub_2311581C8();
  v28 = sub_231158238();
  v29 = sub_2311592F8();
  v30 = OUTLINED_FUNCTION_20_2(v29);
  v31 = *(v16 + 352);
  if (v30)
  {
    v32 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_65_0(v32);
    OUTLINED_FUNCTION_47_4();
    OUTLINED_FUNCTION_126(v33, v34, v35, v36);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    v37 = v28;
  }

  else
  {
    v37 = *(v16 + 352);
    v31 = v28;
  }

  v38 = *(v16 + 344);
  v39 = *(v16 + 320);
  v40 = *(v16 + 288);
  v41 = *(v16 + 256);
  v42 = *(v16 + 304) + 8;
  (*(v16 + 416))(*(v16 + 312), *(v16 + 296));

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_23_0();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, v52, v53, v54, v55, v56, a14, a15, a16);
}

uint64_t sub_2310B0EB8()
{
  OUTLINED_FUNCTION_22_0();

  v1 = *(v0 + 496);
  OUTLINED_FUNCTION_100();

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_2310B0F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a1;
  v3[27] = a3;
  v5 = sub_231158C58();
  v3[28] = v5;
  v6 = *(v5 - 8);
  v3[29] = v6;
  v7 = *(v6 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v8 = sub_231158258();
  v3[32] = v8;
  v9 = *(v8 - 8);
  v3[33] = v9;
  v10 = *(v9 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[36] = v11;
  *v11 = v3;
  v11[1] = sub_2310B10BC;

  return sub_23104D9D8(a1);
}

uint64_t sub_2310B10BC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 288);
  *v3 = *v1;
  *(v2 + 296) = v6;
  *(v2 + 304) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310B11BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_14();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_17_2();
  a20 = v22;
  v27 = v22[35];
  v28 = v22[26];
  v29 = *MEMORY[0x277D7A4C8];
  sub_2311581C8();
  sub_2310B33F0(v28, (v22 + 9));
  v30 = sub_231158238();
  v31 = sub_2311592B8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v22[26];
    OUTLINED_FUNCTION_40_4();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_54_3();
    v34 = swift_slowAlloc();
    a9 = v34;
    OUTLINED_FUNCTION_160(4.8149e-34);
    if (v23)
    {
      v35 = *(v32 + 24);
      a10 = v24;
      a11 = v27;

      OUTLINED_FUNCTION_136();

      MEMORY[0x231924980](v35, v23);

      sub_2310B344C(v32);
      v24 = a10;
      v27 = a11;
    }

    else
    {

      sub_2310B344C(v32);
    }

    v40 = v22[35];
    v41 = v22[32];
    v42 = v22[33];
    v43 = sub_2310488F8(v24, v27, &a9);

    *(v33 + 4) = v43;
    OUTLINED_FUNCTION_179(&dword_23103C000, v44, v45, "Created searchable item from tool %s");
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();

    v46 = *(v42 + 8);
    v47 = OUTLINED_FUNCTION_51_1();
    v48(v47);
  }

  else
  {
    v36 = v22[35];
    v37 = v22[32];
    v38 = v22[33];
    v39 = v22[26];

    (*(v38 + 8))(v36, v37);
    sub_2310B344C(v39);
  }

  v49 = v22[26];
  v50 = *(v22[27] + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger);
  v51 = v49[4];
  if (v51)
  {
    v52 = v49[2];
    v53 = v49[3];
    a10 = v49[1];
    a11 = v52;

    OUTLINED_FUNCTION_136();

    MEMORY[0x231924980](v53, v51);

    v55 = a10;
    v54 = a11;
  }

  else
  {
    v55 = v49[1];
    v56 = v49[2];
  }

  v57 = v22[31];
  v58 = v22[28];
  v59 = v22[29];
  *v57 = v55;
  v57[1] = v54;
  (*(v59 + 104))(v57, *MEMORY[0x277D73260], v58);
  sub_231158B48();
  v60 = v22[37];
  v62 = v22[34];
  v61 = v22[35];
  v63 = v22[30];
  (*(v22[29] + 8))(v22[31], v22[28]);

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_10();

  return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2310B1478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_14();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_17_2();
  a20 = v22;
  v27 = *(v22 + 272);
  v28 = *(v22 + 208);
  v29 = *MEMORY[0x277D7A4C8];
  sub_2311581C8();
  sub_2310B33F0(v28, v22 + 16);
  v30 = sub_231158238();
  v31 = sub_2311592B8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v22 + 208);
    OUTLINED_FUNCTION_40_4();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_54_3();
    v34 = swift_slowAlloc();
    a9 = v34;
    OUTLINED_FUNCTION_160(4.8149e-34);
    if (v23)
    {
      v35 = *(v32 + 24);
      a10 = v24;
      a11 = v27;

      OUTLINED_FUNCTION_136();

      MEMORY[0x231924980](v35, v23);

      sub_2310B344C(v32);
      v24 = a10;
      v27 = a11;
    }

    else
    {

      sub_2310B344C(v32);
    }

    v40 = *(v22 + 264);
    v39 = *(v22 + 272);
    v41 = *(v22 + 256);
    v42 = sub_2310488F8(v24, v27, &a9);

    *(v33 + 4) = v42;
    OUTLINED_FUNCTION_179(&dword_23103C000, v43, v44, "could not create searchable item from tool %s");
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();

    v45 = *(v40 + 8);
    v46 = OUTLINED_FUNCTION_51_1();
    v47(v46);
  }

  else
  {
    v37 = *(v22 + 264);
    v36 = *(v22 + 272);
    v33 = *(v22 + 256);
    v38 = *(v22 + 208);

    (*(v37 + 8))(v36, v33);
    sub_2310B344C(v38);
  }

  v48 = *(v22 + 304);
  v49 = *(*(v22 + 216) + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger);
  *(v22 + 192) = v48;
  v50 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA30, &qword_231164D98);
  if (swift_dynamicCast())
  {
    v33 = *(v22 + 152);
    v51 = __swift_project_boxed_opaque_existential_0((v22 + 128), v33);
    OUTLINED_FUNCTION_45();
    sub_231157858();
    OUTLINED_FUNCTION_111();
    __swift_destroy_boxed_opaque_existential_0((v22 + 128));
    if (v33)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(v22 + 160) = 0;
    *(v22 + 128) = 0u;
    *(v22 + 144) = 0u;
    sub_231093B90(v22 + 128, &qword_27DD3CA38, &unk_231164DA0);
  }

  v52 = *(v22 + 304);
  swift_getErrorValue();
  v51 = *(v22 + 168);
  v53 = *(v22 + 176);
  v54 = *(v22 + 184);
  sub_2311598B8();
  OUTLINED_FUNCTION_111();

LABEL_12:
  v55 = *(v22 + 304);
  v56 = *(v22 + 232);
  v57 = *(v22 + 240);
  v58 = *(v22 + 224);
  *v57 = v51;
  v57[1] = v33;
  (*(v56 + 104))(v57, *MEMORY[0x277D732A0], v58);
  sub_231158B48();

  v59 = *(v22 + 272);
  v60 = *(v22 + 280);
  v61 = *(v22 + 248);
  (*(*(v22 + 232) + 8))(*(v22 + 240), *(v22 + 224));

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_10();

  return v64(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2310B17B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a4;
  v4[12] = a1;
  v7 = sub_231158C58();
  v4[15] = v7;
  v8 = *(v7 - 8);
  v4[16] = v8;
  v9 = *(v8 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v10 = sub_231158258();
  v4[19] = v10;
  v11 = *(v10 - 8);
  v4[20] = v11;
  v12 = *(v11 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v13 = swift_task_alloc();
  v4[23] = v13;
  *v13 = v4;
  v13[1] = sub_2310B1938;

  return sub_23108E0D8(a1, a2);
}

uint64_t sub_2310B1938()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 184);
  *v3 = *v1;
  *(v2 + 192) = v6;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310B1E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v3[13] = a3;
  v5 = sub_231158C58();
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v8 = sub_231159228();
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v11 = sub_231158258();
  v3[22] = v11;
  v12 = *(v11 - 8);
  v3[23] = v12;
  v13 = *(v12 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v14 = swift_task_alloc();
  v3[26] = v14;
  *v14 = v3;
  v14[1] = sub_2310B2048;

  return ShortcutTransformer.transform(item:)(a1);
}

uint64_t sub_2310B2048()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 208);
  *v3 = *v1;
  *(v2 + 216) = v6;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310B2674()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v5[1] = sub_23106044C;
  OUTLINED_FUNCTION_11_0();

  return sub_2310ACB5C();
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2310B2750()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v5[1] = sub_23106044C;
  OUTLINED_FUNCTION_11_0();

  return sub_2310AC90C();
}

uint64_t sub_2310B27EC()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_2(v9);
  *v10 = v11;
  v10[1] = sub_23106044C;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_39_1();

  return sub_2310AB9B4(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2310B28B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t sub_2310B28F4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_2310B2908(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutTransformer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2310B2964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutTransformer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310B29C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutTransformer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310B2A2C()
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_173();
  v0 = type metadata accessor for ShortcutTransformer();
  OUTLINED_FUNCTION_19(v0);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  OUTLINED_FUNCTION_121();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = sub_23106044C;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_39_1();

  return sub_2310B0004(v6, v7, v8, v9, v10, v11, v12, v13);
}

unint64_t sub_2310B2AF8()
{
  result = qword_27DD3CA20;
  if (!qword_27DD3CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA20);
  }

  return result;
}

uint64_t sub_2310B2B68()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_173();
  v2 = type metadata accessor for ShortcutTransformer();
  OUTLINED_FUNCTION_5(v2);
  v5 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2310B3958;
  v7 = OUTLINED_FUNCTION_62_3();

  return sub_2310B1E68(v7, v8, v9);
}

uint64_t sub_2310B2C74(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2311594D8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2311595C8();
  *v1 = result;
  return result;
}

uint64_t sub_2310B2D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2310B2D8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2311594D8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_23106FF58(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_231054A0C(0, &qword_27DD3C168, 0x277D7A1C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_231051E04(&qword_27DD3CA48, &qword_27DD3CA40, &qword_231164DB0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA40, &qword_231164DB0);
          v9 = sub_23107936C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2310B2F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v16 = *a8;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_23105FDEC;

  return sub_2310AE800(a1, a2, a3, a4, a5, a6, a7, v16);
}

uint64_t sub_2310B300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_121();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_2(v12);
  *v13 = v14;
  v13[1] = sub_23105FDEC;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_39_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2310B30B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 72) = v7;
  *v7 = v3;
  v7[1] = sub_2310B3170;

  return sub_2310B0F48(v3 + 16, v6, a3);
}

uint64_t sub_2310B3170()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;

  OUTLINED_FUNCTION_14_7();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_2310B325C()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2310B3308;
  v4 = OUTLINED_FUNCTION_62_3();

  return v5(v4);
}

uint64_t sub_2310B3308()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;

  OUTLINED_FUNCTION_14_7();

  return v7(v2);
}

uint64_t sub_2310B34A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v16 = *a8;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_23106044C;

  return sub_2310AF588(a1, a2, a3, a4, a5, a6, a7, v16);
}

uint64_t objectdestroy_77Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2310B35E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_121();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_2(v12);
  *v13 = v14;
  v13[1] = sub_23106044C;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_39_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2310B3690(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2310B3740;

  return sub_2310B17B8(v5, v6, v7, a3);
}

uint64_t sub_2310B3740()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;

  OUTLINED_FUNCTION_14_7();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t objectdestroy_88Tm()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2310B3868()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2310B3958;
  v4 = OUTLINED_FUNCTION_62_3();

  return v5(v4);
}

uint64_t OUTLINED_FUNCTION_7_12(uint64_t a1)
{
  *(a1 + 8) = sub_2310A6930;
  v2 = *(v1 + 328);
  return v1 + 272;
}

uint64_t OUTLINED_FUNCTION_8_11(uint64_t a1)
{
  *(a1 + 8) = sub_2310A541C;
  v2 = *(v1 + 368);
  return v1 + 272;
}

uint64_t OUTLINED_FUNCTION_9_12()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[50];
  v4 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[43];
  return v0[45];
}

uint64_t OUTLINED_FUNCTION_10_12()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[55];
  v4 = v0[56];
  v6 = v0[53];
  v5 = v0[54];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[48];
  return v0[50];
}

uint64_t OUTLINED_FUNCTION_11_9()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[48];
  v4 = v0[49];
  v5 = v0[46];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[43];
  v9 = v0[41];
  return v0[47];
}

void OUTLINED_FUNCTION_15_7()
{
  v1[12] = sub_23106F314;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_16_6(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_18_6(uint64_t a1@<X8>)
{
  v1[20] = sub_23106FF5C;
  v1[21] = a1;
  v1[22] = v2;
}

uint64_t OUTLINED_FUNCTION_19_7(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_21_9()
{
  *(v0 + 88) = sub_2310A76A4;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_22_7()
{
  *(v0 + 88) = sub_2310A620C;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_23_7()
{
  *(v0 + 88) = sub_2310A7F14;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_28_5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 80);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  *(v1 + 272) = *(a1 + 32);
  *(v1 + 280) = v6;
  *(v1 + 288) = v5;
  *(v1 + 296) = v4;
  *(v1 + 304) = v7;
  *(v1 + 320) = v3;
}

void OUTLINED_FUNCTION_32_5()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
}

void OUTLINED_FUNCTION_33_3()
{
  v2 = v0[53];
  v1 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
}

void OUTLINED_FUNCTION_35_3()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
}

void *OUTLINED_FUNCTION_44_2()
{
  v4 = *v3;
  v5 = *(v1 + v0);
  *v2 = *(v3 - 1);
  v2[1] = v4;
  return v2;
}

uint64_t OUTLINED_FUNCTION_57_2(uint64_t a1)
{
  *(a1 + 8) = sub_2310A7E00;
  v3 = *(v2 + 312);
  return v1;
}

BOOL OUTLINED_FUNCTION_60_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_61_3(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = v2;
}

void OUTLINED_FUNCTION_63_2()
{
  v3 = v0[56];
  v5 = v0[53];
  v4 = v0[54];
  v6 = v0[46];
  v7 = v0[42];
  v8 = v0[43];
}

void OUTLINED_FUNCTION_64_1()
{
  v3 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[51];
  v7 = v0[47];
  v8 = v0[48];
}

void OUTLINED_FUNCTION_65_1()
{
  v3 = v0[54];
  v5 = v0[51];
  v4 = v0[52];
  v6 = v0[48];
  v7 = v0[40];
  v8 = v0[41];
}

uint64_t OUTLINED_FUNCTION_69_1()
{
  v2 = v0[52];
  v3 = v0[45];
  v4 = v0[37];

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_70_1()
{
  v2 = v0[57];
  v3 = v0[50];
  v4 = v0[42];

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_71_1()
{
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[35];

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_76_0()
{
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
}

uint64_t OUTLINED_FUNCTION_77_0()
{
  v2 = *(v0 + 184);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_90(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 336);
  return v3;
}

void OUTLINED_FUNCTION_92()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_93()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 96);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 120, v3);
}

void OUTLINED_FUNCTION_94(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_95()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v7 = v0[27];
  v5 = v0[26];
  v8 = v0[28];
  v6 = v0[24];
}

uint64_t OUTLINED_FUNCTION_100()
{
  v2 = v0[43];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[36];
  v6 = v0[32];
}

uint64_t OUTLINED_FUNCTION_101(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_102()
{

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_103()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_106()
{
  v2 = v0[30];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[13];
}

void *OUTLINED_FUNCTION_109(void *result)
{
  *(v2 + 80) = result;
  result[2] = v7;
  result[3] = v8;
  result[4] = v4;
  result[5] = v6;
  result[6] = v5;
  result[7] = v3;
  result[8] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_110()
{
  *(v1 + 176) = *(v0 + 8);
  *(v1 + 184) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v2;
}

void OUTLINED_FUNCTION_117(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_119()
{

  return sub_231158F38();
}

void OUTLINED_FUNCTION_121()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

void OUTLINED_FUNCTION_126(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_132()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_134()
{
  v1 = v0[26];
  v2 = v0[27];
  v0[51] = *(v0[37] + v0[47]);
}

uint64_t OUTLINED_FUNCTION_135()
{

  return swift_unknownObjectWeakInit();
}

void OUTLINED_FUNCTION_136()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_137()
{
  v2 = *(v0 + 416);
  v3 = *(v0 + 368);

  return sub_2311581C8();
}

BOOL OUTLINED_FUNCTION_138(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_139()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_140()
{
  v2 = *(v0 + 456);
  v3 = *(v0 + 408);

  return sub_2311581C8();
}

char *OUTLINED_FUNCTION_141()
{

  return sub_23104CA0C(0, v0, 0);
}

void OUTLINED_FUNCTION_142(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0xCu);
}

uint64_t OUTLINED_FUNCTION_143()
{

  return sub_2311594D8();
}

uint64_t OUTLINED_FUNCTION_144(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = v2;
}

uint64_t OUTLINED_FUNCTION_145(uint64_t a1)
{
  *(v1 + 520) = a1;
}

uint64_t OUTLINED_FUNCTION_146(uint64_t a1)
{
  *(v1 + 464) = a1;
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1)
{
  *(v1 + 552) = a1;
}

id OUTLINED_FUNCTION_148(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_149()
{
  v2 = *(v0 + 400);
  v3 = *(v0 + 384);

  return sub_2311581C8();
}

id OUTLINED_FUNCTION_150(float a1)
{
  *v2 = a1;

  return [v1 (v3 + 2040)];
}

uint64_t OUTLINED_FUNCTION_151@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_152()
{
  v2 = v0[36];
  v3 = v0[38];
  v4 = v0[40];
}

void OUTLINED_FUNCTION_153()
{
}

uint64_t OUTLINED_FUNCTION_154()
{

  return sub_231158E58();
}

uint64_t OUTLINED_FUNCTION_156()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_158()
{
}

void OUTLINED_FUNCTION_160(float a1)
{
  *v1 = a1;
  v5 = v3[1];
  v4 = v3[2];
  v6 = v3[4];
  v7 = *(v2 + 208);
}

uint64_t OUTLINED_FUNCTION_161@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 304) = a2;
  v3 = *(a1 + a2);
  return 0;
}

void OUTLINED_FUNCTION_170()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
}

id OUTLINED_FUNCTION_177@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[46] = v5;
  v6[47] = a1;
  v8 = *(a5 + a1);
  v6[48] = v8;

  return v8;
}

uint64_t OUTLINED_FUNCTION_178(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_2310488F8(v11, v10, &a10);
}

void OUTLINED_FUNCTION_179(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_180()
{
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
}

uint64_t OUTLINED_FUNCTION_181()
{
  v1 = *(v0 + 344);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);

  return sub_231158CA8();
}

uint64_t sub_2310B466C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t BackgroundTaskScheduler.cancel<A>(_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  OUTLINED_FUNCTION_1_14();
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v21[-1] - v9;
  v12 = *(v11 + 32);
  v14 = OUTLINED_FUNCTION_29_4(v8, v13);
  v15(v14);
  v16 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v16);
  v21[3] = v2;
  v21[4] = *(v1 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v4 + 16))(boxed_opaque_existential_1, v10, v2);
  (*(v17 + 24))(v21, v16, v17);
  (*(v4 + 8))(v10, v2);
  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t BackgroundTaskScheduler.isScheduled<A>(_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  OUTLINED_FUNCTION_1_14();
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v22[-1] - v9;
  v12 = *(v11 + 32);
  v14 = OUTLINED_FUNCTION_29_4(v8, v13);
  v15(v14);
  v16 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v16);
  v22[3] = v2;
  v22[4] = *(v1 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v4 + 16))(boxed_opaque_existential_1, v10, v2);
  v19 = (*(v17 + 32))(v22, v16, v17);
  (*(v4 + 8))(v10, v2);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v19 & 1;
}

uint64_t sub_2310B49B4()
{
  sub_2310B88F0();
  result = sub_231159438();
  qword_280CCB570 = result;
  return result;
}

uint64_t BackgroundTaskScheduler.__allocating_init(scheduler:reschedulingDelay:)(__int128 *a1, double a2)
{
  v4 = swift_allocObject();
  sub_23104613C(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t BackgroundTaskScheduler.init(scheduler:reschedulingDelay:)(__int128 *a1, double a2)
{
  sub_23104613C(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

Swift::Void __swiftcall BackgroundTaskScheduler.checkInTasks()()
{
  OUTLINED_FUNCTION_77();
  v1 = *v0;
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_2_13();
  v31 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = sub_231159448();
  OUTLINED_FUNCTION_19(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  v14 = v29 - v13;
  v29[1] = *(*(v1 + 88) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_13_0(AssociatedTypeWitness);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v18);
  v19 = *(swift_getAssociatedConformanceWitness() + 8);
  v20 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_13();
  v30 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v24);
  v26 = v29 - v25;
  sub_231159598();
  sub_231158EF8();
  swift_getAssociatedConformanceWitness();
  v27 = (v31 + 32);
  for (i = (v31 + 8); ; (*i)(v8, v2))
  {
    sub_231159458();
    if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
    {
      break;
    }

    (*v27)(v8, v14, v2);
    sub_2310B4DA8();
  }

  (*(v30 + 8))(v26, v20);
  OUTLINED_FUNCTION_78();
}

void sub_2310B4DA8()
{
  OUTLINED_FUNCTION_77();
  v1 = v0;
  v3 = v2;
  v42 = *v0;
  v4 = v42[10];
  OUTLINED_FUNCTION_1_14();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v43 = v39 - v14;
  v40 = v15;
  MEMORY[0x28223BE20](v13);
  v17 = v39 - v16;
  v18 = sub_2311592F8();
  if (qword_280CCB568 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v19 = qword_280CCB570;
  v45 = *(v6 + 16);
  v41 = v6 + 16;
  v45(v17, v3, v4);
  v20 = os_log_type_enabled(v19, v18);
  v39[2] = v19;
  v39[3] = v12;
  v44 = v3;
  if (v20)
  {
    OUTLINED_FUNCTION_40_4();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_54_3();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v21 = 136315138;
    v23 = v42;
    v24 = *(v42[11] + 24);
    sub_231158F18();
    v25 = OUTLINED_FUNCTION_21_10();
    v26(v25);
    v27 = sub_2310488F8(v47[0], v47[1], &v46);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_23103C000, v19, v18, "task '%s': checking-in", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v3 = v44;
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    v28 = OUTLINED_FUNCTION_21_10();
    v29(v28);
    v23 = v42;
  }

  v30 = v1[5];
  v31 = v1[6];
  v42 = __swift_project_boxed_opaque_existential_0(v1 + 2, v30);
  v32 = v23[11];
  v47[3] = v4;
  v47[4] = v32;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  v34 = v45;
  v45(boxed_opaque_existential_1, v3, v4);
  v35 = v43;
  v34(v43, v3, v4);
  v36 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = v4;
  *(v37 + 3) = v32;
  v39[0] = v32;
  *(v37 + 4) = v1;
  v40 = v6;
  (*(v6 + 32))(&v37[v36], v35, v4);
  v38 = *(v31 + 8);

  v38(v47, sub_2310B907C, v37, v30, v31);

  __swift_destroy_boxed_opaque_existential_0(v47);
  OUTLINED_FUNCTION_78();
}

void sub_2310B5320()
{
  OUTLINED_FUNCTION_77();
  v52 = v2;
  v53 = v1;
  v4 = v3;
  v5 = *v0;
  v6 = *v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  v50 = v0;
  v51 = v46 - v11;
  v12 = *(v5 + 80);
  OUTLINED_FUNCTION_2_13();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v48 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v46 - v19;
  v21 = sub_2311592F8();
  if (qword_280CCB568 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v22 = qword_280CCB570;
  v49 = *(v14 + 16);
  v49(v20, v4, v12);
  v23 = os_log_type_enabled(v22, v21);
  v47 = v6;
  if (v23)
  {
    OUTLINED_FUNCTION_40_4();
    v24 = swift_slowAlloc();
    v46[1] = v4;
    v25 = v24;
    OUTLINED_FUNCTION_54_3();
    v26 = swift_slowAlloc();
    v56 = v26;
    *v25 = 136315138;
    v27 = *(*(v6 + 88) + 24);
    sub_231158F18();
    v28 = OUTLINED_FUNCTION_30_5();
    v29(v28);
    v30 = sub_2310488F8(v54, v55, &v56);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_23103C000, v22, v21, "task '%s': running", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_30_5();
    v32(v31);
  }

  sub_2311590C8();
  v33 = v51;
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v38 = v48;
  v39 = OUTLINED_FUNCTION_17();
  v40(v39);
  v41 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v42 = (v16 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  *(v43 + 4) = v12;
  *(v43 + 5) = *(v47 + 88);
  (*(v14 + 32))(&v43[v41], v38, v12);
  v44 = &v43[v42];
  v45 = v52;
  *v44 = v53;
  *(v44 + 1) = v45;
  *&v43[(v42 + 23) & 0xFFFFFFFFFFFFFFF8] = v50;
  swift_unknownObjectRetain();

  sub_23105ED1C(0, 0, v33, &unk_231165320, v43);

  OUTLINED_FUNCTION_78();
}

uint64_t sub_2310B568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = *a7;
  v7[20] = *a7;
  v9 = *(v8 + 80);
  v7[21] = v9;
  v10 = *(v9 - 8);
  v7[22] = v10;
  v7[23] = *(v10 + 64);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC10, &unk_2311658F0);
  v7[27] = v11;
  v12 = *(v11 - 8);
  v7[28] = v12;
  v13 = *(v12 + 64) + 15;
  v7[29] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC0, &unk_231165330) - 8) + 64) + 15;
  v7[30] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  v7[31] = v15;
  v16 = *(v15 - 8);
  v7[32] = v16;
  v7[33] = *(v16 + 64);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310B58C0, 0, 0);
}

uint64_t sub_2310B58C0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  v3 = *(*(v0 + 160) + 88);
  *(v0 + 288) = v3;
  v4 = (*(v3 + 32))(v1, v3);
  v6 = v5;
  v7 = *(v5 + 24);
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v7(v4, v6);
  v8 = *(v0 + 280);
  v39 = *(v0 + 256);
  v40 = *(v0 + 264);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  v36 = *(v0 + 208);
  v37 = *(v0 + 272);
  v38 = *(v0 + 184);
  v31 = *(v0 + 176);
  v32 = *(v0 + 216);
  v35 = *(v0 + 168);
  v42 = *(v0 + 144);
  v41 = *(v0 + 136);
  v34 = *(v0 + 128);
  v13 = *(v9 + 40);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC30, &unk_231163850);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v8 + *(v9 + 36)) = v18;
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
  *(swift_task_alloc() + 16) = v10;
  (*(v12 + 104))(v11, *MEMORY[0x277D85778], v32);
  sub_231159108();

  v30 = v8;
  sub_2310B8DA8(v10, v8 + v13);
  ObjectType = swift_getObjectType();
  *(v0 + 296) = ObjectType;
  (*(v42 + 32))(v0 + 16, ObjectType);
  v22 = *(v31 + 16);
  *(v0 + 304) = v22;
  *(v0 + 312) = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v36, v34, v35);
  sub_2310B901C(v8, v37, &unk_27DD3CC20, &unk_231165900);
  sub_23107E8A4(v0 + 16, v0 + 56);
  v23 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v24 = (v38 + *(v39 + 80) + v23) & ~*(v39 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v35;
  *(v25 + 24) = v3;
  (*(v31 + 32))(v25 + v23, v36, v35);
  sub_2310B8934(v37, v25 + v24);
  sub_23104613C((v0 + 56), v25 + ((v40 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  (*(v42 + 16))(sub_2310B8E18, v25, ObjectType);
  v26 = swift_task_alloc();
  *(v0 + 320) = v26;
  *(v26 + 16) = v30;
  *(v26 + 24) = v0 + 16;
  v27 = *(MEMORY[0x277D859B8] + 4);
  v28 = swift_task_alloc();
  *(v0 + 328) = v28;
  *v28 = v0;
  v28[1] = sub_2310B5D3C;

  return MEMORY[0x282200740]();
}

uint64_t sub_2310B5D3C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *(v2 + 328);
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (!v0)
  {
    v7 = *(v3 + 320);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2310B5E44()
{
  v2 = OUTLINED_FUNCTION_24_5();
  v3(v2);
  OUTLINED_FUNCTION_31_5();
  sub_2310B8FC8(v0, &unk_27DD3CC20);
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_2310B5F20()
{
  v33 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);

  v7 = *(v5 + 56);
  v8 = *(v4 + 48);
  v9 = v1;
  v8(v3, v4, v7);
  v10 = sub_2311592D8();
  if (qword_280CCB568 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v11 = *(v0 + 312);
  v12 = qword_280CCB570;
  (*(v0 + 304))(*(v0 + 200), *(v0 + 128), *(v0 + 168));
  v13 = os_log_type_enabled(v12, v10);
  v14 = *(v0 + 336);
  if (v13)
  {
    v15 = *(v0 + 288);
    v31 = v10;
    v16 = *(v0 + 200);
    v18 = *(v0 + 168);
    v17 = *(v0 + 176);
    OUTLINED_FUNCTION_54_3();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_54_3();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v19 = 136315650;
    v22 = *(v15 + 24);
    sub_231158F18();
    (*(v17 + 8))(v16, v18);
    v23 = *(v0 + 120);
    v24 = sub_2310488F8(*(v0 + 112), v23, &v32);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2112;
    v25 = v14;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v26;
    *v20 = v26;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v7;
    _os_log_impl(&dword_23103C000, v12, v31, "task '%s': ran into error '%@'. scheduler accepted our request to run again in %fs", v19, 0x20u);
    sub_2310B8FC8(v20, &unk_27DD3CC40);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    v23 = *(v0 + 200);
    v27 = *(v0 + 168);
    v28 = *(v0 + 176);

    (*(v28 + 8))(v23, v27);
  }

  OUTLINED_FUNCTION_31_5();
  sub_2310B8FC8(v23, &unk_27DD3CC20);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_1();

  return v29();
}

uint64_t sub_2310B6414(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v39 = a4;
  v40 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC0, &unk_231165330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC8, &unk_231165350);
  v13 = *(v38 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v38);
  v17 = &v37 - v16;
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a1;
  v22 = sub_2311592D8();
  if (qword_280CCB568 != -1)
  {
    swift_once();
  }

  v23 = qword_280CCB570;
  (*(v18 + 16))(v21, a2, a5);
  if (os_log_type_enabled(v23, v22))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v24 = 136315394;
    v26 = *(v37 + 24);
    sub_231158F18();
    (*(v18 + 8))(v21, a5);
    v27 = sub_2310488F8(v42[0], v42[1], &v43);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    LOBYTE(v42[0]) = v41;
    v28 = sub_231158E68();
    v30 = sub_2310488F8(v28, v29, &v43);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_23103C000, v23, v22, "task '%s': expired with reason '%s'", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319267C0](v25, -1, -1);
    MEMORY[0x2319267C0](v24, -1, -1);
  }

  else
  {
    (*(v18 + 8))(v21, a5);
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  v32 = v40;
  atomic_store(1u, (*(**(v40 + *(v31 + 36)) + 136))());
  sub_2310B901C(v32 + *(v31 + 40), v12, &qword_27DD3CAC0, &unk_231165330);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  result = __swift_getEnumTagSinglePayload(v12, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v42[0]) = 1;
    sub_2311590D8();
    (*(v13 + 8))(v17, v38);
    (*(*(v33 - 8) + 8))(v12, v33);
    v35 = v39[3];
    v36 = v39[4];
    __swift_project_boxed_opaque_existential_0(v39, v35);
    LOBYTE(v42[0]) = v41;
    return (*(v36 + 48))(v42, v35, v36);
  }

  return result;
}

uint64_t sub_2310B688C()
{
  OUTLINED_FUNCTION_4_1();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_5(v4);
  v0[10] = v5;
  v0[11] = *(v6 + 64);
  v0[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v7);
  v9 = *(v8 + 64) + 15;
  v0[13] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2310B6984()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v23 = v5;
  v7 = *(v0 + 56);
  v8 = sub_2311590C8();
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  sub_2310B901C(v5, v2, &unk_27DD3CC20, &unk_231165900);
  sub_23107E8A4(v6, v0 + 16);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = (v12 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_2310B8934(v2, v14 + v12);
  sub_23104613C((v0 + 16), v14 + v13);
  sub_2310CF430(v1, &unk_2311652E0, v14);
  sub_2310B8FC8(v1, &qword_27DD3C1D0);
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v8);
  sub_2310B901C(v23, v2, &unk_27DD3CC20, &unk_231165900);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_2310B8934(v2, v18 + v12);
  sub_2310CF430(v1, &unk_2311652F0, v18);
  sub_2310B8FC8(v1, &qword_27DD3C1D0);
  v19 = *(MEMORY[0x277D85818] + 4);
  v20 = swift_task_alloc();
  *(v0 + 112) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAB0, &unk_2311652F8);
  *v20 = v0;
  v20[1] = sub_2310B6BC4;
  v21 = *(v0 + 56);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822004D0]();
}

uint64_t sub_2310B6BC4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = *(v2 + 112);
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310B6CC4()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = **(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159138();

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_2310B6D70()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v0[12];
  v1 = v0[13];

  OUTLINED_FUNCTION_1();
  v4 = v0[15];

  return v3();
}

uint64_t sub_2310B6DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2311577C8();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310B6E94, 0, 0);
}

uint64_t sub_2310B6E94()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  v3 = atomic_load((*(**(v1 + *(v2 + 36)) + 136))());
  if (v3)
  {
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 32);
    *(v0 + 64) = 89;
    sub_23105FAA4(MEMORY[0x277D84F90]);
    sub_2310B8BD0();
    OUTLINED_FUNCTION_17_9();
    sub_2311577B8();
    v14 = *(v12 + 8);
    v15 = OUTLINED_FUNCTION_17();
    v16(v15);
    swift_willThrow();
    v17 = *(v0 + 48);

    OUTLINED_FUNCTION_1();

    return v18();
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = v4[4];
    __swift_project_boxed_opaque_existential_0(v4, v4[3]);
    v6 = *(v5 + 40);
    v19 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *v8 = v0;
    v8[1] = sub_2310B7098;
    v9 = OUTLINED_FUNCTION_17();

    return v19(v9);
  }
}

uint64_t sub_2310B7098()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;

  v5 = *(v1 + 48);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_2310B71A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2311577C8();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA0, &qword_2311652D0);
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAB8, &qword_231165308);
  v4[9] = v11;
  v12 = *(v11 - 8);
  v4[10] = v12;
  v13 = *(v12 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310B7334, 0, 0);
}

uint64_t sub_2310B7334()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[11];
  (*(v0[7] + 16))(v0[8], v0[2], v0[6]);
  sub_2310B8B8C(&qword_280CCAF98, &qword_27DD3CAA0);
  sub_231159708();
  v2 = *(MEMORY[0x277D79D70] + 4);
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_2310B8B8C(&qword_280CCAE50, &unk_27DD3CAB8);
  *v3 = v0;
  v3[1] = sub_2310B7490;
  v5 = v0[11];
  v6 = v0[9];

  return MEMORY[0x2821E18C8](v0 + 116, v6, v4);
}

uint64_t sub_2310B7490()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2[12];
  v4 = v2[11];
  v5 = v2[10];
  v6 = v2[9];
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v9 + 104) = v0;

  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_17();
  v12(v11);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2310B75E8()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  *(v0 + 112) = 89;
  sub_23105FAA4(MEMORY[0x277D84F90]);
  sub_2310B8BD0();
  OUTLINED_FUNCTION_17_9();
  sub_2311577B8();
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_17();
  v6(v5);
  swift_willThrow();
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 40);

  OUTLINED_FUNCTION_1();

  return v10();
}

uint64_t sub_2310B76BC()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_2310B7750(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_2311592F8();
  if (qword_280CCB568 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v7 = qword_280CCB570;
  sub_23107E8A4(a1, v30);
  v8 = &off_231161000;
  if (os_log_type_enabled(v7, v6))
  {
    OUTLINED_FUNCTION_40_4();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_54_3();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    v12 = v31;
    v11 = v32;
    __swift_project_boxed_opaque_existential_0(v30, v31);
    v13 = v12;
    v8 = &off_231161000;
    v14 = (*(v11 + 16))(v13, v11);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0(v30);
    v17 = sub_2310488F8(v14, v16, &v33);

    *(v9 + 4) = v17;
    _os_log_impl(&dword_23103C000, v7, v6, "task '%s': submitting to run", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    v3 = v2;
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  v18 = v4[5];
  v19 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v18);
  result = (*(v19 + 16))(a1, v18, v19);
  if (!v3)
  {
    v21 = sub_2311592F8();
    sub_23107E8A4(a1, v30);
    if (os_log_type_enabled(v7, v21))
    {
      OUTLINED_FUNCTION_40_4();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_54_3();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = *(v8 + 8);
      v24 = v31;
      v25 = v32;
      __swift_project_boxed_opaque_existential_0(v30, v31);
      v26 = (*(v25 + 16))(v24, v25);
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v29 = sub_2310488F8(v26, v28, &v33);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_23103C000, v7, v21, "task '%s': submitted to run", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
      OUTLINED_FUNCTION_40();
      return MEMORY[0x2319267C0]();
    }

    else
    {
      return __swift_destroy_boxed_opaque_existential_0(v30);
    }
  }

  return result;
}

uint64_t sub_2310B7A28(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  OUTLINED_FUNCTION_1_14();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-1] - v11;
  (*(v13 + 32))(v14, v13);
  sub_23107E8A4((v2 + 2), v21);
  __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  DynamicType = swift_getDynamicType();
  v16 = v21[4];
  __swift_destroy_boxed_opaque_existential_0(v21);
  v20[3] = v5;
  v20[4] = *(v4 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(v7 + 16))(boxed_opaque_existential_1, v12, v5);
  (*(v16 + 40))(v22, v20, DynamicType, v16);
  __swift_destroy_boxed_opaque_existential_0(v20);
  a2(v22);
  sub_2310B7750(v22);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return (*(v7 + 8))(v12, v5);
}

uint64_t BackgroundTaskScheduler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t Urgency.hashValue.getter()
{
  v1 = *v0;
  sub_231159918();
  MEMORY[0x2319253F0](v1);
  return sub_231159948();
}

uint64_t sub_2310B7D74@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_2310B7DA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

VoiceShortcuts::SystemResource sub_2310B7E78@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SystemResource.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2310B7EB8@<X0>(uint64_t *a1@<X8>)
{
  result = SystemResource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2310B7F2C()
{
  v1 = *v0;
  sub_231159918();
  MEMORY[0x2319253F0](v1);
  return sub_231159948();
}

unint64_t sub_2310B7F78()
{
  result = qword_27DD3CA68;
  if (!qword_27DD3CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA68);
  }

  return result;
}

unint64_t sub_2310B7FD0()
{
  result = qword_27DD3CA70;
  if (!qword_27DD3CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA70);
  }

  return result;
}

unint64_t sub_2310B8028()
{
  result = qword_27DD3CA78;
  if (!qword_27DD3CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA78);
  }

  return result;
}

unint64_t sub_2310B8080()
{
  result = qword_27DD3CA80;
  if (!qword_27DD3CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA80);
  }

  return result;
}

unint64_t sub_2310B80D8()
{
  result = qword_27DD3CA88;
  if (!qword_27DD3CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA88);
  }

  return result;
}

unint64_t sub_2310B8130()
{
  result = qword_27DD3CA90;
  if (!qword_27DD3CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA90);
  }

  return result;
}

unint64_t sub_2310B8188()
{
  result = qword_27DD3CA98;
  if (!qword_27DD3CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CA98);
  }

  return result;
}

uint64_t dispatch thunk of Schedulable.main()()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  v4 = v3;
  v5 = *(v1 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_23105FDEC;

  return v9(v4, v2);
}

_BYTE *storeEnumTagSinglePayload for Urgency(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SystemResource(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemResource(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

_BYTE *sub_2310B878C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2310B88F0()
{
  result = qword_280CCAE58;
  if (!qword_280CCAE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CCAE58);
  }

  return result;
}

uint64_t sub_2310B8934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310B89A4()
{
  OUTLINED_FUNCTION_22_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_5(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v8[1] = sub_23106044C;
  v10 = OUTLINED_FUNCTION_11_0();

  return sub_2310B6DD4(v10, v11, v12, v13, v14);
}

uint64_t sub_2310B8AAC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_19(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v7[1] = sub_23106044C;
  v9 = OUTLINED_FUNCTION_11_0();

  return sub_2310B71A4(v9, v10, v11, v12);
}

uint64_t sub_2310B8B8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_29_4(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2310B8BD0()
{
  result = qword_27DD3BE58;
  if (!qword_27DD3BE58)
  {
    sub_2311577C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BE58);
  }

  return result;
}

uint64_t sub_2310B8C28()
{
  v1 = v0[3];
  v2 = (*(*(v0[4] - 8) + 64) + ((*(*(v0[4] - 8) + 80) + 48) & ~*(*(v0[4] - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = (v0 + v2);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v3);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_2(v9);
  *v10 = v11;
  v10[1] = sub_23106044C;
  v12 = OUTLINED_FUNCTION_11_0();

  return sub_2310B568C(v12, v13, v14, v15, v6, v7, v8);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x2319267C0);
  }

  return result;
}

uint64_t sub_2310B8DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC0, &unk_231165330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310B8E18(unsigned __int8 *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_2_13();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_5(v9);
  v11 = v10;
  v13 = v12;
  v14 = (v6 + v8 + *(v11 + 80)) & ~*(v11 + 80);
  v15 = (v1 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2310B6414(a1, v1 + v6, v1 + v14, v15, v3, v4);
}

uint64_t sub_2310B8F20()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = sub_23106044C;

  return sub_2310B688C();
}

uint64_t sub_2310B8FC8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_29_4(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_13_0(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_2310B901C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

void sub_2310B907C()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = *(v0 + 32);
  sub_2310B5320();
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return sub_231157918();
}

uint64_t OUTLINED_FUNCTION_21_10()
{
  result = v0;
  *(v2 - 232) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_5()
{
  result = v0[37];
  v2 = v0[17];
  v3 = *(v0[18] + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_6()
{
  result = v0;
  v3 = *(v1 - 232);
  return result;
}

void OUTLINED_FUNCTION_31_5()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

void sub_2310B9260(uint64_t a1)
{
  v3 = sub_2311580D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2310BDD00(&unk_280CCB0F0, MEMORY[0x277D79D00]);
  v11[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v6 = qword_280CCBF90;
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(v4 + 32))(v8 + v7, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2310BDCD4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_36;
  v9 = _Block_copy(aBlock);

  v10 = sub_231158E88();

  xpc_set_event_stream_handler((v10 + 32), v6, v9);

  _Block_release(v9);
}

void sub_2310B94C4(uint64_t a1)
{
  v3 = sub_231157E28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2310BDD00(&unk_280CCB148, MEMORY[0x277D79B98]);
  v11[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v6 = qword_280CCBF90;
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(v4 + 32))(v8 + v7, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2310BDAA8;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_6_0;
  v9 = _Block_copy(aBlock);

  v10 = sub_231158E88();

  xpc_set_event_stream_handler((v10 + 32), v6, v9);

  _Block_release(v9);
}

void sub_2310B9728(uint64_t a1)
{
  v3 = sub_231157F78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2310BDD00(&qword_27DD3CB48, MEMORY[0x277D79C98]);
  v11[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v6 = qword_280CCBF90;
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(v4 + 32))(v8 + v7, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2310BDAD4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_12_1;
  v9 = _Block_copy(aBlock);

  v10 = sub_231158E88();

  xpc_set_event_stream_handler((v10 + 32), v6, v9);

  _Block_release(v9);
}

void sub_2310B998C(uint64_t a1)
{
  v3 = sub_231158098();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2310BDD00(&unk_280CCB128, MEMORY[0x277D79CD8]);
  v11[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v6 = qword_280CCBF90;
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(v4 + 32))(v8 + v7, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2310BDBB8;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_24;
  v9 = _Block_copy(aBlock);

  v10 = sub_231158E88();

  xpc_set_event_stream_handler((v10 + 32), v6, v9);

  _Block_release(v9);
}

void sub_2310B9BF0(uint64_t a1)
{
  v3 = sub_231158138();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2310BDD00(&qword_280CCB0C0, MEMORY[0x277D79D30]);
  v11[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v6 = qword_280CCBF90;
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(v4 + 32))(v8 + v7, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2310BDB8C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_18;
  v9 = _Block_copy(aBlock);

  v10 = sub_231158E88();

  xpc_set_event_stream_handler((v10 + 32), v6, v9);

  _Block_release(v9);
}

void sub_2310B9E54(uint64_t a1)
{
  v3 = sub_231158188();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2310BDD00(&unk_280CCB0A0, MEMORY[0x277D79D58]);
  v11[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v6 = qword_280CCBF90;
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(v4 + 32))(v8 + v7, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_2310BDBE4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_30_0;
  v9 = _Block_copy(aBlock);

  v10 = sub_231158E88();

  xpc_set_event_stream_handler((v10 + 32), v6, v9);

  _Block_release(v9);
}

void DaemonXPCEventStream.start(scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_13();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 8);
  v20[1] = sub_231157C98();
  if (qword_280CCBF80 != -1)
  {
    swift_once();
  }

  v15 = qword_280CCBF90;
  (*(v8 + 16))(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a1;
  (*(v8 + 32))(&v17[v16], v12, a2);
  aBlock[4] = sub_2310BD9A4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310BD9E4;
  aBlock[3] = &block_descriptor_13;
  v18 = _Block_copy(aBlock);

  v19 = sub_231158E88();

  xpc_set_event_stream_handler((v19 + 32), v15, v18);

  _Block_release(v18);
}

uint64_t sub_2310BA310()
{
  v0 = sub_231159328();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_231159318();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_231158D48();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_23104CA2C();
  sub_231158D28();
  v10[1] = MEMORY[0x277D84F90];
  sub_2310BDD00(&unk_280CCAF10, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  sub_23106028C();
  sub_231159498();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  result = sub_231159358();
  qword_280CCBF90 = result;
  return result;
}

void sub_2310BA548(void *a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_2311580B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v39[-v9];
  v11 = sub_2311581F8();
  isa = v11[-1].isa;
  v13 = *(isa + 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v16))
  {
    v46 = v11;
    v17 = sub_231158EC8();
    v19 = v18;
    sub_2311581E8();
    sub_2310BDD00(&qword_280CCB118, MEMORY[0x277D79CE0]);
    sub_2311581D8();
    v42 = v17;
    v44 = v19;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v43 = isa;
    v27 = sub_231158258();
    __swift_project_value_buffer(v27, qword_280CCDF80);
    (*(v4 + 16))(v8, v10, v3);
    v28 = sub_231158238();
    v29 = sub_2311592F8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v30 = 136315138;
      sub_2310BDD00(&qword_280CCB110, MEMORY[0x277D79CE0]);
      v40 = v29;
      v31 = sub_2311597C8();
      v33 = v32;
      v34 = *(v4 + 8);
      v34(v8, v3);
      v35 = sub_2310488F8(v31, v33, &v48);

      *(v30 + 4) = v35;
      v36 = v30;
      _os_log_impl(&dword_23103C000, v28, v40, "Dispatching XPC event: %s", v30, 0xCu);
      v37 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2319267C0](v37, -1, -1);
      MEMORY[0x2319267C0](v36, -1, -1);
    }

    else
    {

      v34 = *(v4 + 8);
      v34(v8, v3);
    }

    sub_2311580D8();
    sub_2310BDD00(&unk_280CCB0F0, MEMORY[0x277D79D00]);
    sub_231157CA8();

    sub_2311580A8();
    sub_23107AF20(v10);

    v34(v10, v3);
    (*(v43 + 1))(v15, v46);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v20 = sub_231158258();
    __swift_project_value_buffer(v20, qword_280CCDF80);
    swift_unknownObjectRetain();
    v46 = sub_231158238();
    v21 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v46, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47 = a1;
      v48 = v23;
      *v22 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v24 = sub_231158E68();
      v26 = sub_2310488F8(v24, v25, &v48);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_23103C000, v46, v21, "Unable to decode XPC event: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x2319267C0](v23, -1, -1);
      MEMORY[0x2319267C0](v22, -1, -1);
    }

    else
    {
      v38 = v46;
    }
  }
}

void sub_2310BACA4(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_231157E08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v41[-v9];
  v11 = sub_2311581F8();
  isa = v11[-1].isa;
  v13 = *(isa + 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v16))
  {
    v48 = v11;
    v17 = sub_231158EC8();
    v19 = v18;
    sub_2311581E8();
    sub_2310BDD00(&qword_27DD3CB38, MEMORY[0x277D79B78]);
    sub_2311581D8();
    v44 = v17;
    v46 = v19;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v45 = isa;
    v27 = sub_231158258();
    __swift_project_value_buffer(v27, qword_280CCDF80);
    (*(v4 + 16))(v8, v10, v3);
    v28 = sub_231158238();
    v29 = sub_2311592F8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v50 = v43;
      *v30 = 136315138;
      sub_2310BDD00(&qword_27DD3CB40, MEMORY[0x277D79B78]);
      v42 = v29;
      v31 = sub_2311597C8();
      v33 = v32;
      v34 = *(v4 + 8);
      v34(v8, v3);
      v35 = sub_2310488F8(v31, v33, &v50);

      *(v30 + 4) = v35;
      v36 = v30;
      _os_log_impl(&dword_23103C000, v28, v42, "Dispatching XPC event: %s", v30, 0xCu);
      v37 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x2319267C0](v37, -1, -1);
      MEMORY[0x2319267C0](v36, -1, -1);
    }

    else
    {

      v34 = *(v4 + 8);
      v34(v8, v3);
    }

    sub_231157E28();
    sub_2310BDD00(&unk_280CCB148, MEMORY[0x277D79B98]);
    sub_231157CA8();

    v39 = sub_231157DF8();
    sub_23107B168(v10, v39, v40);

    v34(v10, v3);
    (*(v45 + 1))(v15, v48);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v20 = sub_231158258();
    __swift_project_value_buffer(v20, qword_280CCDF80);
    swift_unknownObjectRetain();
    v48 = sub_231158238();
    v21 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v48, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = a1;
      v50 = v23;
      *v22 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v24 = sub_231158E68();
      v26 = sub_2310488F8(v24, v25, &v50);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_23103C000, v48, v21, "Unable to decode XPC event: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x2319267C0](v23, -1, -1);
      MEMORY[0x2319267C0](v22, -1, -1);
    }

    else
    {
      v38 = v48;
    }
  }
}

void sub_2310BB400(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_231157F58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v41[-v9];
  v11 = sub_2311581F8();
  isa = v11[-1].isa;
  v13 = *(isa + 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v16))
  {
    v48 = v11;
    v17 = sub_231158EC8();
    v19 = v18;
    sub_2311581E8();
    sub_2310BDD00(&qword_27DD3CB50, MEMORY[0x277D79C78]);
    sub_2311581D8();
    v44 = v17;
    v46 = v19;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v45 = isa;
    v27 = sub_231158258();
    __swift_project_value_buffer(v27, qword_280CCDF80);
    (*(v4 + 16))(v8, v10, v3);
    v28 = sub_231158238();
    v29 = sub_2311592F8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v50 = v43;
      *v30 = 136315138;
      sub_2310BDD00(&qword_27DD3CB58, MEMORY[0x277D79C78]);
      v42 = v29;
      v31 = sub_2311597C8();
      v33 = v32;
      v34 = *(v4 + 8);
      v34(v8, v3);
      v35 = sub_2310488F8(v31, v33, &v50);

      *(v30 + 4) = v35;
      v36 = v30;
      _os_log_impl(&dword_23103C000, v28, v42, "Dispatching XPC event: %s", v30, 0xCu);
      v37 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x2319267C0](v37, -1, -1);
      MEMORY[0x2319267C0](v36, -1, -1);
    }

    else
    {

      v34 = *(v4 + 8);
      v34(v8, v3);
    }

    sub_231157F78();
    sub_2310BDD00(&qword_27DD3CB48, MEMORY[0x277D79C98]);
    sub_231157CA8();

    v39 = sub_231157F38();
    sub_23107B1B0(v10, v39, v40);

    v34(v10, v3);
    (*(v45 + 1))(v15, v48);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v20 = sub_231158258();
    __swift_project_value_buffer(v20, qword_280CCDF80);
    swift_unknownObjectRetain();
    v48 = sub_231158238();
    v21 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v48, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = a1;
      v50 = v23;
      *v22 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v24 = sub_231158E68();
      v26 = sub_2310488F8(v24, v25, &v50);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_23103C000, v48, v21, "Unable to decode XPC event: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x2319267C0](v23, -1, -1);
      MEMORY[0x2319267C0](v22, -1, -1);
    }

    else
    {
      v38 = v48;
    }
  }
}

void sub_2310BBB5C(void *a1, uint64_t a2)
{
  v4 = sub_231158078();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = sub_2311581F8();
  isa = v12[-1].isa;
  v14 = *(isa + 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v17))
  {
    v48 = isa;
    v49 = v12;
    v18 = sub_231158EC8();
    v20 = v19;
    sub_2311581E8();
    sub_2310BDD00(&unk_27DD3CB60, MEMORY[0x277D79CC0]);
    sub_2311581D8();
    v45 = v18;
    v46 = v20;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v47 = a2;
    v28 = sub_231158258();
    __swift_project_value_buffer(v28, qword_280CCDF80);
    (*(v5 + 16))(v9, v11, v4);
    v29 = sub_231158238();
    v30 = sub_2311592F8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v51 = v44;
      *v31 = 136315138;
      v43 = v30;
      v42 = XPCAppProtectionEventStream.Event.description.getter();
      v33 = v32;
      v34 = *(v5 + 8);
      v34(v9, v4);
      v35 = sub_2310488F8(v42, v33, &v51);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_23103C000, v29, v43, "Dispatching XPC event: %s", v31, 0xCu);
      v36 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x2319267C0](v36, -1, -1);
      MEMORY[0x2319267C0](v31, -1, -1);
    }

    else
    {

      v34 = *(v5 + 8);
      v34(v9, v4);
    }

    v38 = v48;
    sub_231158098();
    sub_2310BDD00(&unk_280CCB128, MEMORY[0x277D79CD8]);
    sub_231157CA8();

    v39 = sub_231158068();
    sub_23107B348(v11, v39, v40);

    v34(v11, v4);
    (*(v38 + 1))(v16, v49);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v21 = sub_231158258();
    __swift_project_value_buffer(v21, qword_280CCDF80);
    swift_unknownObjectRetain();
    v49 = sub_231158238();
    v22 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v49, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = a1;
      v51 = v24;
      *v23 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v25 = sub_231158E68();
      v27 = sub_2310488F8(v25, v26, &v51);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_23103C000, v49, v22, "Unable to decode XPC event: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x2319267C0](v24, -1, -1);
      MEMORY[0x2319267C0](v23, -1, -1);
    }

    else
    {
      v37 = v49;
    }
  }
}

void sub_2310BC268(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_231158118();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v41[-v9];
  v11 = sub_2311581F8();
  isa = v11[-1].isa;
  v13 = *(isa + 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v16))
  {
    v48 = v11;
    v17 = sub_231158EC8();
    v19 = v18;
    sub_2311581E8();
    sub_2310BDD00(&qword_280CCB0D8, MEMORY[0x277D79D10]);
    sub_2311581D8();
    v44 = v17;
    v46 = v19;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v45 = isa;
    v27 = sub_231158258();
    __swift_project_value_buffer(v27, qword_280CCDF80);
    (*(v4 + 16))(v8, v10, v3);
    v28 = sub_231158238();
    v29 = sub_2311592F8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v50 = v43;
      *v30 = 136315138;
      sub_2310BDD00(&qword_280CCB0D0, MEMORY[0x277D79D10]);
      v42 = v29;
      v31 = sub_2311597C8();
      v33 = v32;
      v34 = *(v4 + 8);
      v34(v8, v3);
      v35 = sub_2310488F8(v31, v33, &v50);

      *(v30 + 4) = v35;
      v36 = v30;
      _os_log_impl(&dword_23103C000, v28, v42, "Dispatching XPC event: %s", v30, 0xCu);
      v37 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x2319267C0](v37, -1, -1);
      MEMORY[0x2319267C0](v36, -1, -1);
    }

    else
    {

      v34 = *(v4 + 8);
      v34(v8, v3);
    }

    sub_231158138();
    sub_2310BDD00(&qword_280CCB0C0, MEMORY[0x277D79D30]);
    sub_231157CA8();

    v39 = sub_2311580F8();
    sub_23107B390(v10, v39, v40);

    v34(v10, v3);
    (*(v45 + 1))(v15, v48);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v20 = sub_231158258();
    __swift_project_value_buffer(v20, qword_280CCDF80);
    swift_unknownObjectRetain();
    v48 = sub_231158238();
    v21 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v48, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = a1;
      v50 = v23;
      *v22 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v24 = sub_231158E68();
      v26 = sub_2310488F8(v24, v25, &v50);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_23103C000, v48, v21, "Unable to decode XPC event: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x2319267C0](v23, -1, -1);
      MEMORY[0x2319267C0](v22, -1, -1);
    }

    else
    {
      v38 = v48;
    }
  }
}

void sub_2310BC9C4(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_231158168();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v41[-v9];
  v11 = sub_2311581F8();
  isa = v11[-1].isa;
  v13 = *(isa + 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v16))
  {
    v48 = v11;
    v17 = sub_231158EC8();
    v19 = v18;
    sub_2311581E8();
    sub_2310BDD00(&qword_27DD3CB70, MEMORY[0x277D79D38]);
    sub_2311581D8();
    v44 = v17;
    v46 = v19;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v45 = isa;
    v27 = sub_231158258();
    __swift_project_value_buffer(v27, qword_280CCDF80);
    (*(v4 + 16))(v8, v10, v3);
    v28 = sub_231158238();
    v29 = sub_2311592F8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v50 = v43;
      *v30 = 136315138;
      sub_2310BDD00(&qword_27DD3C4E8, MEMORY[0x277D79D38]);
      v42 = v29;
      v31 = sub_2311597C8();
      v33 = v32;
      v34 = *(v4 + 8);
      v34(v8, v3);
      v35 = sub_2310488F8(v31, v33, &v50);

      *(v30 + 4) = v35;
      v36 = v30;
      _os_log_impl(&dword_23103C000, v28, v42, "Dispatching XPC event: %s", v30, 0xCu);
      v37 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x2319267C0](v37, -1, -1);
      MEMORY[0x2319267C0](v36, -1, -1);
    }

    else
    {

      v34 = *(v4 + 8);
      v34(v8, v3);
    }

    sub_231158188();
    sub_2310BDD00(&unk_280CCB0A0, MEMORY[0x277D79D58]);
    sub_231157CA8();

    v39 = sub_231158148();
    sub_23107B3D8(v10, v39, v40);

    v34(v10, v3);
    (*(v45 + 1))(v15, v48);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v20 = sub_231158258();
    __swift_project_value_buffer(v20, qword_280CCDF80);
    swift_unknownObjectRetain();
    v48 = sub_231158238();
    v21 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v48, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = a1;
      v50 = v23;
      *v22 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v24 = sub_231158E68();
      v26 = sub_2310488F8(v24, v25, &v50);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_23103C000, v48, v21, "Unable to decode XPC event: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x2319267C0](v23, -1, -1);
      MEMORY[0x2319267C0](v22, -1, -1);
    }

    else
    {
      v38 = v48;
    }
  }
}

void sub_2310BD120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  v77 = AssociatedTypeWitness;
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v74 = &v62 - v11;
  v12 = *(a5 + 8);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v73 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = sub_2311581F8();
  isa = v23[-1].isa;
  v79 = v23;
  v24 = *(isa + 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_231158268();
  if (xpc_dictionary_get_string(a1, v27))
  {
    v70 = v20;
    v71 = a5;
    v72 = a2;
    v28 = sub_231158EC8();
    v30 = v29;
    sub_2311581E8();
    v31 = *(swift_getAssociatedConformanceWitness() + 8);
    sub_2311581D8();
    v67 = v28;
    v68 = v12;
    v66 = v30;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v39 = sub_231158258();
    __swift_project_value_buffer(v39, qword_280CCDF80);
    v40 = v70;
    v65 = v14[2];
    v65(v70, v22, v13);
    v41 = sub_231158238();
    v42 = sub_2311592F8();
    v69 = v41;
    v43 = os_log_type_enabled(v41, v42);
    v44 = v71;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v63 = v45;
      v64 = swift_slowAlloc();
      v81[0] = v64;
      *v45 = 136315138;
      v65(v73, v40, v13);
      v46 = *(v44 + 16);
      v47 = *(swift_getAssociatedConformanceWitness() + 8);
      v48 = sub_231158E78();
      v50 = v49;
      LODWORD(v65) = v42;
      v51 = v14[1];
      v73 = ((v14 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v51(v40, v13);
      v52 = v51;
      v53 = sub_2310488F8(v48, v50, v81);

      v54 = v63;
      *(v63 + 1) = v53;
      v55 = v69;
      _os_log_impl(&dword_23103C000, v69, v65, "Dispatching XPC event: %s", v54, 0xCu);
      v56 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x2319267C0](v56, -1, -1);
      MEMORY[0x2319267C0](v54, -1, -1);
    }

    else
    {

      v58 = v14[1];
      v73 = ((v14 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v58(v40, v13);
      v52 = v58;
    }

    sub_231157CA8();

    v59 = v74;
    (*(v44 + 40))(v22, a4, v44);
    v60 = v77;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_23107B530(v22, v59, v13, v60, AssociatedConformanceWitness);
    (*(v76 + 8))(v59, v60);
    v52(v22, v13);
    (*(isa + 1))(v26, v79);
  }

  else
  {
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v32 = sub_231158258();
    __swift_project_value_buffer(v32, qword_280CCDF80);
    swift_unknownObjectRetain();
    v79 = sub_231158238();
    v33 = sub_2311592D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v79, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v80 = a1;
      v81[0] = v35;
      *v34 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CB30, &qword_231165388);
      v36 = sub_231158E68();
      v38 = sub_2310488F8(v36, v37, v81);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_23103C000, v79, v33, "Unable to decode XPC event: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x2319267C0](v35, -1, -1);
      MEMORY[0x2319267C0](v34, -1, -1);
    }

    else
    {
      v57 = v79;
    }
  }
}

uint64_t sub_2310BD9E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2310BDB00(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t objectdestroy_2Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_2_13();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);

  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + v8, v5 | 7);
}

uint64_t sub_2310BDD00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2310BDD78(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_2311591C8();
  if (!v26)
  {
    return sub_231158FB8();
  }

  v48 = v26;
  v52 = sub_231159658();
  v39 = sub_231159668();
  sub_231159608();
  result = sub_2311591B8();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2311591E8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_231159648();
      result = sub_2311591D8();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2310BE194(uint64_t a1)
{
  result = MEMORY[0x231924C60](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_2310DF3EC(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_2310BE254()
{
  v0 = sub_231159758();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2310BE2A0(char a1)
{
  result = 0x6F69737365536F6ELL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      return result;
    case 3:
      result = 0x666C65536F6ELL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2310BE358@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2310BE254();
  *a2 = result;
  return result;
}

unint64_t sub_2310BE388@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2310BE2A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_2310BE3E0()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_indexingBatchSize] = 5;
  v2 = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_syncingQueue;
  sub_2311581B8();
  *&v0[v2] = sub_2311581A8();
  sub_231158CB8();
  sub_231158C98();
  v3 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v4 = sub_2310C0D80();
  *&v1[OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_index] = v4;
  sub_231158B68();
  v5 = v4;
  *&v1[OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger] = sub_231158B58();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SpotlightIndexer();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

uint64_t sub_2310BE504()
{
  OUTLINED_FUNCTION_4_1();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v1[2] = v9;
  v10 = *(v4 - 8);
  v1[11] = v10;
  v1[12] = *(v10 + 64);
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310BE5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 104);
  v14 = *(v12 + 88);
  v15 = *(v12 + 56);
  v28 = *(v12 + 96);
  v29 = *(v12 + 48);
  v16 = *(v12 + 40);
  v18 = *(v12 + 16);
  v17 = *(v12 + 24);
  v30 = *(v12 + 32);
  *(v12 + 112) = *(*(v12 + 80) + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_syncingQueue);
  v19 = swift_allocObject();
  v31 = *(v12 + 64);
  swift_unknownObjectWeakInit();
  (*(v14 + 16))(v13, v16, v31);
  v20 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v12 + 120) = v21;
  *(v21 + 16) = v31;
  *(v21 + 32) = v19;
  *(v21 + 40) = v29;
  *(v21 + 48) = v15;
  *(v21 + 56) = v18;
  *(v21 + 64) = v17;
  *(v21 + 72) = v30;
  (*(v14 + 32))(v21 + v20, v13, v31);
  v22 = *(MEMORY[0x277D79D60] + 4);

  v23 = swift_task_alloc();
  *(v12 + 128) = v23;
  *v23 = v12;
  v23[1] = sub_2310BE7D0;
  v26 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821E1890](v23, 0x6867696C746F7073, 0xEF7865646E692074, &unk_2311653E8, v21, v26, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_2310BE7D0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v3[17] = v0;

  if (!v0)
  {
    v10 = v3[14];
    v9 = v3[15];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310BE8DC()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_2310BE938()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  OUTLINED_FUNCTION_1();
  v5 = v0[17];

  return v4();
}

uint64_t sub_2310BE9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = v18;
  v8[30] = v19;
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[22] = a2;
  v9 = *(v18 - 8);
  v8[31] = v9;
  v8[32] = *(v9 + 64);
  v8[33] = swift_task_alloc();
  v10 = sub_231158258();
  v8[34] = v10;
  v11 = *(v10 - 8);
  v8[35] = v11;
  v12 = *(v11 + 64) + 15;
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v13 = sub_231158C58();
  v8[38] = v13;
  v14 = *(v13 - 8);
  v8[39] = v14;
  v15 = *(v14 + 64) + 15;
  v8[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310BEB3C, 0, 0);
}

uint64_t sub_2310BEB3C()
{
  v75 = v0;
  v1 = v0[22];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[41] = Strong;
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];
  if (Strong)
  {
    v6 = Strong;
    v7 = v0[37];
    v8 = v0[29];
    v9 = v0[30];
    v10 = v0[27];
    v11 = v0[24];
    v68 = v0[26];
    v70 = v0[25];
    v12 = v0[23];
    v13 = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger;
    v0[42] = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger;
    v72 = v6;
    v14 = *(v6 + v13);
    v15 = *(v9 + 32);
    v0[43] = v15;
    v0[44] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x8D59000000000000;
    v73 = v15();
    v74 = v16;
    MEMORY[0x231924980](2108704, 0xE300000000000000);
    MEMORY[0x231924980](v12, v11);
    v17 = v74;
    *v3 = v73;
    v3[1] = v17;
    v18 = *MEMORY[0x277D732A8];
    v0[45] = *(v4 + 104);
    v0[46] = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v19 = OUTLINED_FUNCTION_10_13();
    v20(v19);
    sub_231158B48();
    v0[47] = *(v4 + 8);
    v0[48] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21 = OUTLINED_FUNCTION_45();
    v22(v21);
    v0[49] = *MEMORY[0x277D7A4C8];
    sub_2311581C8();
    swift_bridgeObjectRetain_n();

    v23 = sub_231158238();
    v24 = sub_2311592F8();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[37];
    v28 = v0[34];
    v27 = v0[35];
    if (v25)
    {
      v67 = v24;
      v29 = v0[29];
      v30 = v0[30];
      v31 = v0[26];
      v66 = v0[27];
      v71 = v0[37];
      v32 = v0[25];
      v69 = v0[34];
      v33 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v33 = 136315650;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v35 = MEMORY[0x231924A30](v32, AssociatedTypeWitness);
      v37 = v36;

      v38 = sub_2310488F8(v35, v37, &v73);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      MEMORY[0x231924A30](v31, AssociatedTypeWitness);
      swift_bridgeObjectRelease_n();
      v39 = OUTLINED_FUNCTION_45();
      v42 = sub_2310488F8(v39, v40, v41);

      *(v33 + 14) = v42;
      *(v33 + 22) = 2080;
      v43 = MEMORY[0x231924A30](v66, MEMORY[0x277D837D0]);
      v45 = sub_2310488F8(v43, v44, &v73);

      *(v33 + 24) = v45;
      _os_log_impl(&dword_23103C000, v23, v67, "performing spotlight tool index with added: %s updated: %s removed: %s", v33, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();

      v46 = *(v27 + 8);
      v46(v71, v69);
    }

    else
    {
      v59 = v0[25];
      v58 = v0[26];
      swift_bridgeObjectRelease_n();

      v46 = *(v27 + 8);
      v46(v26, v28);
    }

    v60 = v0[27];
    v61 = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_index;
    v0[50] = v46;
    v0[51] = v61;
    v62 = *(v72 + v61);
    v0[52] = v62;
    v63 = v62;
    v64 = sub_231158F38();
    v0[53] = v64;
    v0[2] = v0;
    v0[3] = sub_2310BF120;
    v65 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23106F314;
    v0[13] = &block_descriptor_17_0;
    v0[14] = v65;
    [v63 deleteSearchableItemsWithIdentifiers:v64 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_231158B68();
    sub_231158B58();
    *v3 = 0xD00000000000001CLL;
    v3[1] = 0x8000000231169E10;
    v47 = *MEMORY[0x277D73298];
    v48 = *(v4 + 104);
    v49 = OUTLINED_FUNCTION_10_13();
    v48(v49);
    sub_231158B48();

    v50 = *(v4 + 8);
    v51 = OUTLINED_FUNCTION_45();
    v50(v51);
    sub_231158B58();
    *v3 = 0xD00000000000001CLL;
    v3[1] = 0x8000000231169E10;
    v52 = *MEMORY[0x277D732B0];
    v53 = OUTLINED_FUNCTION_10_13();
    v48(v53);
    sub_231158B48();

    v54 = OUTLINED_FUNCTION_45();
    v50(v54);
    sub_2310B2AF8();
    swift_allocError();
    *v55 = 3;
    swift_willThrow();
    OUTLINED_FUNCTION_9_13();

    OUTLINED_FUNCTION_1();

    return v56();
  }
}

uint64_t sub_2310BF120()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310BF220()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 216);

  v3 = *(v2 + 16);
  v4 = *MEMORY[0x277D73268];
  for (i = (v2 + 40); v3; --v3)
  {
    v7 = *(v0 + 376);
    v6 = *(v0 + 384);
    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    v10 = *(v0 + 320);
    v11 = *(v0 + 304);
    v12 = *i;
    v13 = *(*(v0 + 328) + *(v0 + 336));
    *v10 = *(i - 1);
    v10[1] = v12;
    v9(v10, v4, v11);
    swift_bridgeObjectRetain_n();
    sub_231158B48();

    v14 = OUTLINED_FUNCTION_45();
    v7(v14);
    i += 2;
  }

  v15 = *(v0 + 264);
  v35 = *(v0 + 256);
  v36 = *(v0 + 328);
  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v18 = *(v0 + 232);
  v34 = *(v0 + 224);
  v19 = *(v0 + 200);
  v20 = *(v0 + 208);
  v21 = *&v36[*(v0 + 408)];
  *(v0 + 440) = v21;
  swift_getAssociatedTypeWitness();
  v21;
  *(v0 + 448) = sub_231158FA8();
  *(v0 + 168) = v20;
  v22 = swift_task_alloc();
  *v22 = v18;
  v22[1] = v17;
  KeyPath = swift_getKeyPath();

  v24 = swift_task_alloc();
  v24[2] = v18;
  v24[3] = v17;
  v24[4] = KeyPath;
  v25 = sub_231159038();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_2310BDD78(sub_2310C0C40, v24, v25, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v27);

  *(v0 + 456) = sub_2310BE194(v28);
  (*(v16 + 16))(v15, v34, v18);
  v29 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v30 = swift_allocObject();
  *(v0 + 464) = v30;
  *(v30 + 16) = v18;
  *(v30 + 24) = v17;
  (*(v16 + 32))(v30 + v29, v15, v18);
  *(v30 + ((v35 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;
  v31 = v36;
  v32 = swift_task_alloc();
  *(v0 + 472) = v32;
  *v32 = v0;
  v32[1] = sub_2310BF54C;

  return CSSearchableIndex.index<A>(items:updatedIdentifiers:batchSize:transformerBlock:)();
}

uint64_t sub_2310BF54C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = v2[59];
  *v4 = *v1;
  *(v3 + 480) = v0;

  v6 = v2[58];
  v7 = v2[57];
  v8 = v2[56];
  v9 = v2[55];
  if (v0)
  {
    v10 = v2[58];
  }

  else
  {
    v11 = v2[57];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2310BF6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  v49 = *(v16 + 384);
  v50 = *(v16 + 392);
  v17 = *(v16 + 368);
  v48 = *(v16 + 376);
  v18 = *(v16 + 352);
  v19 = *(v16 + 360);
  v20 = *(v16 + 320);
  v21 = *(v16 + 304);
  v22 = *(v16 + 288);
  v23 = *(v16 + 232);
  v24 = *(v16 + 240);
  v26 = *(v16 + 184);
  v25 = *(v16 + 192);
  v27 = *(*(v16 + 328) + *(v16 + 336));
  v51 = (*(v16 + 344))();
  v52 = v28;
  MEMORY[0x231924980](2108704, 0xE300000000000000);
  MEMORY[0x231924980](v26, v25);
  *v20 = v51;
  v20[1] = v52;
  v19(v20, *MEMORY[0x277D732B0], v21);
  sub_231158B48();
  v48(v20, v21);
  sub_2311581C8();
  v29 = sub_231158238();
  v30 = sub_2311592F8();
  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v16 + 328);
  if (v31)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_23103C000, v29, v30, "finished indexing changeset", v33, 2u);
    OUTLINED_FUNCTION_16();
    v34 = v29;
  }

  else
  {
    v34 = *(v16 + 328);
    v32 = v29;
  }

  v35 = *(v16 + 320);
  v36 = *(v16 + 296);
  v37 = *(v16 + 264);
  v38 = *(v16 + 280) + 8;
  (*(v16 + 400))(*(v16 + 288), *(v16 + 272));

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, v48, v49, v50, v51, v52, a14, a15, a16);
}

uint64_t sub_2310BF8C0()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];
  v4 = v0[41];
  swift_willThrow();

  v5 = v0[54];
  OUTLINED_FUNCTION_9_13();

  OUTLINED_FUNCTION_1();

  return v6();
}

uint64_t sub_2310BF960()
{
  v1 = *(v0 + 480);
  OUTLINED_FUNCTION_9_13();

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_2310BF9E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 24);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_2310BFA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a1;
  v5[14] = a3;
  v9 = sub_231158C58();
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[21] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[22] = v13;
  v14 = *(v13 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v15 = sub_231158258();
  v5[25] = v15;
  v16 = *(v15 - 8);
  v5[26] = v16;
  v17 = *(v16 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v18 = *(a5 + 40);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v5[29] = v20;
  *v20 = v5;
  v20[1] = sub_2310BFD1C;

  return (v22)(v5 + 10, a1, a4, a5);
}

uint64_t sub_2310BFD1C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310BFE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[28];
  v28 = v24[24];
  v30 = v24[21];
  v29 = v24[22];
  v31 = v24[13];
  v32 = v24[10];
  v33 = *MEMORY[0x277D7A4C8];
  sub_2311581C8();
  (*(v29 + 16))(v28, v31, v30);
  v34 = sub_231158238();
  v35 = sub_2311592B8();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v24[28];
  v38 = v24[25];
  v39 = v24[26];
  v40 = v24[24];
  v42 = v24[21];
  v41 = v24[22];
  if (v36)
  {
    a10 = v24[25];
    a11 = v24[28];
    v44 = v24[15];
    v43 = v24[16];
    a12 = v32;
    v45 = swift_slowAlloc();
    HIDWORD(a9) = v35;
    v46 = swift_slowAlloc();
    a13 = v46;
    *v45 = 136315138;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_7_13(AssociatedConformanceWitness);
    v49 = v48(v42);
    v51 = v50;
    (*(v41 + 8))(v40, v42);
    v52 = sub_2310488F8(v49, v51, &a13);

    *(v45 + 4) = v52;
    _os_log_impl(&dword_23103C000, v34, BYTE4(a9), "Created searchable item from tool %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();

    (*(v39 + 8))(a11, a10);
  }

  else
  {

    (*(v41 + 8))(v40, v42);
    (*(v39 + 8))(v37, v38);
  }

  v54 = v24[20];
  v53 = v24[21];
  v55 = v24[17];
  v56 = v24[18];
  v58 = v24[15];
  v57 = v24[16];
  v59 = v24[13];
  v60 = *(v24[14] + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger);
  v61 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_7_13(v61);
  *v54 = v62(v53);
  v54[1] = v63;
  v64 = *MEMORY[0x277D73260];
  v65 = *(v56 + 104);
  v66 = OUTLINED_FUNCTION_10_13();
  v67(v66);
  sub_231158B48();
  v68 = v24[27];
  v69 = v24[28];
  v71 = v24[23];
  v70 = v24[24];
  v72 = v24[19];
  (*(v24[18] + 8))(v24[20], v24[17]);

  v73 = v24[1];
  OUTLINED_FUNCTION_23_0();

  return v76(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310C00FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 216);
  v29 = *(v24 + 176);
  v28 = *(v24 + 184);
  v30 = *(v24 + 168);
  v31 = *(v24 + 104);
  v32 = *MEMORY[0x277D7A4C8];
  sub_2311581C8();
  (*(v29 + 16))(v28, v31, v30);
  v33 = sub_231158238();
  v34 = sub_2311592B8();
  v35 = os_log_type_enabled(v33, v34);
  v37 = *(v24 + 208);
  v36 = *(v24 + 216);
  v38 = *(v24 + 200);
  v40 = *(v24 + 176);
  v39 = *(v24 + 184);
  v41 = *(v24 + 168);
  if (v35)
  {
    a12 = *(v24 + 216);
    v42 = *(v24 + 120);
    v43 = *(v24 + 128);
    a11 = *(v24 + 200);
    v44 = swift_slowAlloc();
    HIDWORD(a10) = v34;
    v45 = swift_slowAlloc();
    a13 = v45;
    *v44 = 136315138;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_7_13(AssociatedConformanceWitness);
    v48 = v47(v41);
    v50 = v49;
    (*(v40 + 8))(v39, v41);
    v51 = sub_2310488F8(v48, v50, &a13);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_23103C000, v33, BYTE4(a10), "could not create searchable item from tool %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();

    (*(v37 + 8))(a12, a11);
  }

  else
  {

    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v36, v38);
  }

  v52 = *(v24 + 240);
  v53 = *(*(v24 + 112) + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger);
  *(v24 + 88) = v52;
  v54 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA30, &qword_231164D98);
  if (swift_dynamicCast())
  {
    v55 = *(v24 + 48);
    __swift_project_boxed_opaque_existential_0((v24 + 16), *(v24 + 40));
    OUTLINED_FUNCTION_45();
    v56 = sub_231157858();
    v58 = v57;
    __swift_destroy_boxed_opaque_existential_0((v24 + 16));
    if (v58)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v24 + 48) = 0;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    sub_2310C0E08(v24 + 16);
  }

  v59 = *(v24 + 240);
  swift_getErrorValue();
  v61 = *(v24 + 56);
  v60 = *(v24 + 64);
  v62 = *(v24 + 72);
  v56 = sub_2311598B8();
  v58 = v63;

LABEL_9:
  v64 = *(v24 + 240);
  v65 = *(v24 + 144);
  v66 = *(v24 + 152);
  v67 = *(v24 + 136);
  *v66 = v56;
  v66[1] = v58;
  (*(v65 + 104))(v66, *MEMORY[0x277D732A0], v67);
  sub_231158B48();

  v68 = *(v24 + 216);
  v69 = *(v24 + 224);
  v71 = *(v24 + 184);
  v70 = *(v24 + 192);
  v72 = *(v24 + 160);
  (*(*(v24 + 144) + 8))(*(v24 + 152), *(v24 + 136));

  v73 = *(v24 + 8);
  OUTLINED_FUNCTION_23_0();

  return v76(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310C047C()
{
  OUTLINED_FUNCTION_4_1();
  v1[18] = v0;
  v2 = sub_231158C58();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2310C0534()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = *(v4 + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger);
  (*(v2 + 104))(v1, *MEMORY[0x277D73278], v3);
  sub_231158B48();
  (*(v2 + 8))(v1, v3);
  v6 = *(v4 + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_index);
  sub_231158C98();
  v7 = sub_231158E28();
  v0[22] = v7;

  v0[2] = v0;
  v0[3] = sub_2310C06DC;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23106FF5C;
  v0[13] = &block_descriptor_14;
  v0[14] = v8;
  [v6 deleteAllSearchableItemsForBundleID:v7 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2310C06DC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310C07DC()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_2310C0840()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  OUTLINED_FUNCTION_1();
  v5 = v0[23];

  return v4();
}

id sub_2310C08B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightIndexer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2310C0988()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23106044C;

  return sub_2310BE504();
}

uint64_t sub_2310C0A7C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23105FDEC;

  return sub_2310C047C();
}

uint64_t sub_2310C0B28(uint64_t a1)
{
  v3 = v1[3];
  v4 = (*(*(v1[2] - 8) + 80) + 80) & ~*(*(v1[2] - 8) + 80);
  v5 = v1[5];
  v12 = v1[4];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23105FDEC;

  return sub_2310BE9A8(a1, v12, v5, v6, v7, v8, v9, v1 + v4);
}

uint64_t sub_2310C0C6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2310930DC;

  return sub_2310BFA90(a1, v1 + v6, v7, v4, v5);
}

id sub_2310C0D80()
{
  v1 = sub_231158E28();

  v2 = sub_231158E28();

  v3 = [v0 initWithName:v1 bundleIdentifier:v2];

  return v3;
}

uint64_t sub_2310C0E08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA38, &unk_231164DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SpotlightIndexer.SpotlightIndexerError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SpotlightIndexer.SpotlightIndexerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2310C0FD8()
{
  result = qword_27DD3CB98;
  if (!qword_27DD3CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CB98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_13()
{
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[33];
}

uint64_t performAsPersona<A>(_:work:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_2310A4D6C;

  return v9(a1);
}

uint64_t performAsEachPersona<A>(work:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2310C11B4, 0, 0);
}

uint64_t sub_2310C11B4()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_2310C14E4(v1, v1);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = *(*(v1 - 8) + 72);
  v7 = *(*(v1 - 8) + 80);
  swift_allocObject();
  v8 = sub_231158F78();
  v10 = v9;
  v0[5] = v8;
  v15 = (v2 + *v2);
  v11 = v2[1];
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_2310C1338;
  v13 = v0[3];

  return (v15)(v10, 0, 0);
}

uint64_t sub_2310C1338()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2310C1480, 0, 0);
  }

  else
  {
    v4 = v3[4];
    v5 = v3[5];
    sub_231159038();
    v6 = v3[1];

    return v6(v5);
  }
}

uint64_t sub_2310C1480()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_231159838();
  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_2310C14E4(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2310C1580()
{
  sub_2310C1FE8(@"com.apple.accessibility.reduce.motion.status", sub_2310C1A68, 0, &v247);
  v0 = v247;
  v1 = v249;
  v2 = v250;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = v0;
  *(inited + 40) = v248;
  *(inited + 56) = v1;
  *(inited + 64) = v2;
  *(inited + 72) = v251;
  sub_2310C1FE8(@"com.apple.accessibility.enhance.background.contrast.status", sub_2310C1A84, 0, &v242);
  v3 = v242;
  v4 = v244;
  v5 = v245;
  v6 = swift_initStackObject();
  OUTLINED_FUNCTION_1_15(v6, v7, v8, v9, v10, v11, v12, v13, v136, v146, v156, v166, v6, inited, v14);
  *(v15 + 32) = v3;
  *(v15 + 40) = v243;
  *(v15 + 56) = v4;
  *(v15 + 64) = v5;
  *(v15 + 72) = v246;
  sub_2310C1FE8(@"com.apple.mediaaccessibility.displayFilterSettingsChanged", sub_2310C1AA0, 0, &v237);
  v16 = v237;
  v17 = v239;
  v18 = v240;
  v19 = swift_initStackObject();
  OUTLINED_FUNCTION_1_15(v19, v20, v21, v22, v23, v24, v25, v26, v137, v147, v157, v19, v176, v187, v27);
  *(v28 + 32) = v16;
  *(v28 + 40) = v238;
  *(v28 + 56) = v17;
  *(v28 + 64) = v18;
  *(v28 + 72) = v241;
  sub_2310C1FE8(@"UIAccessibilityInvertColorsChanged", sub_2310C1ABC, 0, &v232);
  v29 = v232;
  v30 = v234;
  v31 = v235;
  v32 = swift_initStackObject();
  OUTLINED_FUNCTION_1_15(v32, v33, v34, v35, v36, v37, v38, v39, v138, v148, v32, v167, v177, v188, v40);
  *(v41 + 32) = v29;
  *(v41 + 40) = v233;
  *(v41 + 56) = v30;
  *(v41 + 64) = v31;
  *(v41 + 72) = v236;
  sub_2310C1FE8(@"com.apple.accessibility.voiceovertouch.status", sub_2310C1AD8, 0, &v227);
  v42 = v227;
  v43 = v229;
  v44 = v230;
  v45 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v45, v46, v47, v48, v49, v50, v51, v52, v139, v45, v158, v168, v178, v189, v53);
  *(v54 + 32) = v42;
  *(v54 + 40) = v228;
  *(v54 + 56) = v43;
  *(v54 + 64) = v44;
  *(v54 + 72) = v231;
  sub_2310C1FE8(@"com.apple.accessibility.zoomtouch.status", sub_2310C1AF4, 0, &v222);
  v55 = v222;
  v56 = v224;
  v57 = v225;
  v58 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v58, v59, v60, v61, v62, v63, v64, v65, v140, v149, v159, v169, v179, v190, v66);
  *(v67 + 32) = v55;
  *(v67 + 40) = v223;
  *(v67 + 56) = v56;
  *(v67 + 64) = v57;
  *(v67 + 72) = v226;
  sub_2310C1FE8(@"com.apple.accessibility.commandandcontrol.status", sub_2310C1B10, 0, &v217);
  v68 = v217;
  v70 = v219;
  v69 = v220;
  v71 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v71, v72, v73, v74, v75, v76, v77, v78, v141, v150, v160, v170, v180, v191, v79);
  *(v80 + 32) = v68;
  *(v80 + 40) = v218;
  *(v80 + 56) = v70;
  *(v80 + 64) = v69;
  *(v80 + 72) = v221;
  sub_2310C1FE8(@"com.apple.accessibility.pointer.increased.contrast", sub_2310C1B2C, 0, &v212);
  v81 = v212;
  v82 = v214;
  v83 = v215;
  v84 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v84, v85, v86, v87, v88, v89, v90, v91, v142, v151, v161, v171, v181, v192, v92);
  *(v93 + 32) = v81;
  *(v93 + 40) = v213;
  *(v93 + 56) = v82;
  *(v93 + 64) = v83;
  *(v93 + 72) = v216;
  sub_2310C1FE8(@"com.apple.accessibility.classic.wob.status", sub_2310C1B48, 0, &v207);
  v94 = v207;
  v95 = v209;
  v96 = v210;
  v97 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v97, v98, v99, v100, v101, v102, v103, v104, v143, v152, v162, v172, v182, v193, v105);
  *(v106 + 32) = v94;
  *(v106 + 40) = v208;
  *(v106 + 56) = v95;
  *(v106 + 64) = v96;
  *(v106 + 72) = v211;
  sub_2310C1FE8(@"com.apple.accessibility.reduce.white.point", sub_2310C1B64, 0, &v202);
  v107 = v202;
  v108 = v204;
  v109 = v205;
  v110 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v110, v111, v112, v113, v114, v115, v116, v117, v144, v153, v163, v173, v183, v194, v118);
  *(v119 + 32) = v107;
  *(v119 + 40) = v203;
  *(v119 + 56) = v108;
  *(v119 + 64) = v109;
  *(v119 + 72) = v206;
  sub_2310C1FE8(@"com.apple.commcenter.DataSettingsChangedNotification", sub_2310C1CAC, 0, &v197);
  v120 = v197;
  v121 = v199;
  v122 = v200;
  v123 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v123, v124, v125, v126, v127, v128, v129, v130, v145, v154, v164, v174, v184, v195, v131);
  *(v132 + 32) = v120;
  *(v132 + 40) = v198;
  *(v132 + 56) = v121;
  *(v132 + 64) = v122;
  *(v132 + 72) = v201;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_231165540;
  *(v133 + 32) = v196;
  *(v133 + 40) = v185;
  *(v133 + 48) = v175;
  *(v133 + 56) = v165;
  *(v133 + 64) = v155;
  *(v133 + 72) = v58;
  *(v133 + 80) = v71;
  *(v133 + 88) = v84;
  *(v133 + 96) = v97;
  *(v133 + 104) = v110;
  *(v133 + 112) = v123;
  v134 = static TaskBuilder.buildBlock(_:)(v133);
  swift_setDeallocating();
  sub_2310639FC();
  return v134;
}

void sub_2310C1B80(SEL *a1, Class *a2, SEL *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v6 = [objc_allocWithZone(*a2) initWithStarting_];

  v7 = [BiomeLibrary() Accessibility];
  swift_unknownObjectRelease();
  v8 = [v7 *a3];
  swift_unknownObjectRelease();
  v9 = [v8 source];

  [v9 sendEvent_];
}

void sub_2310C1CAC()
{
  v25[1] = *MEMORY[0x277D85DE8];
  v0 = sub_231158258();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultSettings];
  v25[0] = 0;
  v6 = [v5 cellularDataEnabledWithError_];
  v7 = v25[0];
  if (v25[0])
  {
    swift_willThrow();
    v8 = *MEMORY[0x277D7A448];
    v9 = v7;
    sub_2311581C8();
    v10 = v9;
    v11 = sub_231158238();
    v12 = sub_2311592D8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v10;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_23103C000, v11, v12, "Error getting cellular data state: %@", v13, 0xCu);
      sub_2310794EC(v14);
      MEMORY[0x2319267C0](v14, -1, -1);
      MEMORY[0x2319267C0](v13, -1, -1);
    }

    else
    {
      v15 = v11;
      v11 = v10;
    }

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v18 = [objc_allocWithZone(MEMORY[0x277CF10C8]) initWithStarting_];

    v19 = [BiomeLibrary() Device];
    swift_unknownObjectRelease();
    v20 = [v19 Wireless];
    swift_unknownObjectRelease();
    v21 = [v20 CellularDataEnabled];
    swift_unknownObjectRelease();
    v22 = [v21 source];

    [v22 sendEvent_];
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2310C1FE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  sub_231159588();

  v10 = sub_231158E58();
  MEMORY[0x231924980](v10);

  OUTLINED_FUNCTION_26_1();
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = a1;
  OUTLINED_FUNCTION_26_1();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *a4 = 0xD000000000000012;
  a4[1] = 0x800000023116A000;
  a4[4] = 2;
  OUTLINED_FUNCTION_26_1();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2310C2400;
  *(v13 + 24) = v11;
  a4[2] = sub_2310C24A0;
  a4[3] = v13;
  OUTLINED_FUNCTION_26_1();
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_231165598;
  *(v14 + 24) = v12;
  a4[5] = &unk_2311655A0;
  a4[6] = v14;

  v15 = a1;
}

double sub_2310C2164(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  sub_2310C2258(a3, &v7);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_231161E80;
  *(v5 + 32) = v4;
  return result;
}

uint64_t sub_2310C21D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2310C21F0, 0, 0);
}

uint64_t sub_2310C21F0()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

void sub_2310C2258(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_231158E58();
  v5 = v4;
  if (v3 != sub_231158E58() || v5 != v6)
  {
    sub_231159818();
  }

  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C820, &unk_2311649E0);
  OUTLINED_FUNCTION_26_1();
  swift_allocObject();

  sub_23107F5EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C760, &unk_231164C50);
  swift_allocObject();
  sub_23109C9A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BEF8, &qword_231162A00);
  swift_allocObject();
  sub_2310A004C();
}

uint64_t sub_2310C2408()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_2_8(v4);

  return sub_2310C21D0(v5, v6, v7);
}

uint64_t sub_2310C24A8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_2_8(v4);

  return sub_231063050(v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_1_15(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

BOOL sub_2310C2568(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

id sub_2310C2618()
{
  result = [objc_allocWithZone(type metadata accessor for SpotlightSettingsClient()) init];
  qword_280CCBA90 = result;
  return result;
}

id SpotlightSettingsClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SpotlightSettingsClient.shared.getter()
{
  if (qword_280CCBA88 != -1)
  {
    swift_once();
  }

  v1 = qword_280CCBA90;

  return v1;
}

Swift::Bool __swiftcall SpotlightSettingsClient.isSpotlightEnabled(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_231158258();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = sub_2310C2B98(0xD000000000000015, 0x800000023116A020);
  if (v9)
  {
    v10 = v9;
    v11 = sub_231158E28();
    v12 = [v10 arrayForKey_];

    if (v12 && (v13 = sub_231158F48(), v12, v14 = sub_2310C298C(v13), v15 = , v14))
    {
      v24[0] = countAndFlagsBits;
      v24[1] = object;
      MEMORY[0x28223BE20](v15);
      *&v23[-16] = v24;
      v16 = sub_2310C2568(sub_2310C2C6C, &v23[-32], v14);

      v17 = !v16;
    }

    else
    {

      v17 = 1;
    }
  }

  else
  {
    v18 = *MEMORY[0x277D7A490];
    sub_2311581C8();
    v19 = sub_231158238();
    v20 = sub_2311592D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23103C000, v19, v20, "Unable to access Spotlight user defaults", v21, 2u);
      MEMORY[0x2319267C0](v21, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2310C298C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_23104CA0C(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_231040B98(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23104CA0C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

id SpotlightSettingsClient.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SpotlightSettingsClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2310C2B98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_231158E28();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_2310C2BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_231159818() & 1;
  }
}

uint64_t dispatch thunk of Indexer.index<A>(added:updated:removed:using:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 24);
  OUTLINED_FUNCTION_0_19();
  v24 = (v19 + *v19);
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  *(v10 + 16) = v22;
  *v22 = v10;
  v22[1] = sub_2310A4E78;

  return v24(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of Indexer.resetIndex()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_0_19();
  v11 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2310A4E78;

  return v11(a1, a2);
}

uint64_t dispatch thunk of IndexableItemTransformer.transform(item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  OUTLINED_FUNCTION_0_19();
  v15 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_2310A4D6C;

  return v15(a1, a2, a3, a4);
}

uint64_t sub_2310C30E8()
{
  OUTLINED_FUNCTION_20_7();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t sub_2310C3144(char a1)
{
  OUTLINED_FUNCTION_20_7();
  sub_2310512BC(v3, a1);
  return sub_231159948();
}

uint64_t sub_2310C3184(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_20_7();
  a2(a1);
  sub_231158EA8();

  return sub_231159948();
}

uint64_t sub_2310C31E8(uint64_t a1)
{
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x2319253F0](a1);
  return sub_231159948();
}

uint64_t sub_2310C3228(uint64_t a1, uint64_t a2)
{
  sub_231051B38(a2, &qword_27DD3CAC0, &unk_231165330);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  OUTLINED_FUNCTION_13_0(v4);
  (*(v5 + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_2310C32D0()
{
  for (i = 0; i != 5; ++i)
  {
    v1 = &unk_2845D7950 + i;
    result = sub_2310C3318(v1[32]);
  }

  return result;
}

uint64_t sub_2310C3318(char a1)
{
  v3 = sub_2311592F8();
  if (qword_280CCB568 != -1)
  {
    swift_once();
  }

  v4 = qword_280CCB570;
  if (os_log_type_enabled(qword_280CCB570, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136315138;
    v7 = sub_2310C666C(a1);
    v9 = sub_2310488F8(v7, v8, v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_23103C000, v4, v3, "task '%s': checking-in", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2319267C0](v6, -1, -1);
    MEMORY[0x2319267C0](v5, -1, -1);
  }

  v10 = v1[5];
  v11 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v10);
  v15[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v15[4] = sub_231086674();
  LOBYTE(v15[0]) = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  v13 = *(v11 + 8);

  v13(v15, sub_2310C6BD4, v12, v10, v11);

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_2310C36F0(char a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_2311592F8();
  if (qword_280CCB568 != -1)
  {
    swift_once();
  }

  v12 = qword_280CCB570;
  if (os_log_type_enabled(qword_280CCB570, v11))
  {
    v13 = swift_slowAlloc();
    v23 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    v16 = sub_2310C666C(a1);
    v18 = sub_2310488F8(v16, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_23103C000, v12, v11, "task '%s': running", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2319267C0](v15, -1, -1);
    v19 = v14;
    a3 = v23;
    MEMORY[0x2319267C0](v19, -1, -1);
  }

  v20 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = a3;
  *(v21 + 56) = v3;
  swift_unknownObjectRetain();

  sub_23105ED1C(0, 0, v10, &unk_2311658E0, v21);
}

uint64_t sub_2310C3904(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 96) = a5;
  *(v7 + 224) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC10, &unk_2311658F0);
  *(v7 + 120) = v8;
  v9 = *(v8 - 8);
  *(v7 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC0, &unk_231165330) - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  *(v7 + 152) = v12;
  v13 = *(v12 - 8);
  *(v7 + 160) = v13;
  *(v7 + 168) = *(v13 + 64);
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310C3A8C, 0, 0);
}

uint64_t sub_2310C3A8C()
{
  v1 = sub_2310C64AC(*(v0 + 224));
  v3 = v2;
  v4 = *(v2 + 24);
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v4(v1, v3);
  v5 = *(v0 + 184);
  v31 = *(v0 + 168);
  v29 = *(v0 + 176);
  v30 = *(v0 + 160);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v10 = *(v0 + 96);
  v27 = *(v0 + 120);
  v28 = *(v0 + 104);
  v32 = *(v0 + 224);
  v11 = *(v6 + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC30, &unk_231163850);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v5 + *(v6 + 36)) = v16;
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  *(swift_task_alloc() + 16) = v7;
  (*(v9 + 104))(v8, *MEMORY[0x277D85778], v27);
  sub_231159108();

  sub_2310B8DA8(v7, v5 + v11);
  ObjectType = swift_getObjectType();
  *(v0 + 192) = ObjectType;
  (*(v28 + 32))(v0 + 16, ObjectType, v28);
  sub_2310B901C(v5, v29, &unk_27DD3CC20, &unk_231165900);
  sub_2310548A0(v0 + 16, v0 + 56);
  v21 = (*(v30 + 80) + 17) & ~*(v30 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v32;
  sub_2310B8934(v29, v22 + v21);
  sub_23104613C((v0 + 56), v22 + ((v31 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  (*(v28 + 16))(sub_2310C6D98, v22, ObjectType, v28);
  v23 = swift_task_alloc();
  *(v0 + 200) = v23;
  *(v23 + 16) = v5;
  *(v23 + 24) = v0 + 16;
  v24 = *(MEMORY[0x277D859B8] + 4);
  v25 = swift_task_alloc();
  *(v0 + 208) = v25;
  *v25 = v0;
  v25[1] = sub_2310C3E3C;

  return MEMORY[0x282200740]();
}

uint64_t sub_2310C3E3C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *(v2 + 208);
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    v7 = sub_2310C4000;
  }

  else
  {
    v8 = *(v3 + 200);

    v7 = sub_2310C3F48;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2310C3F48()
{
  v1 = OUTLINED_FUNCTION_16_7();
  v2(v1);
  v3 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  sub_231051B38(v0[23], &unk_27DD3CC20, &unk_231165900);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_1();

  return v6();
}

uint64_t sub_2310C4000()
{
  v29 = v0;
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);

  v7 = *(v5 + 56);
  v8 = *(v4 + 48);
  v9 = v1;
  v8(v3, v4, v7);
  v10 = sub_2311592D8();
  if (qword_280CCB568 != -1)
  {
    OUTLINED_FUNCTION_4_12();
  }

  v11 = qword_280CCB570;
  v12 = os_log_type_enabled(qword_280CCB570, v10);
  v13 = *(v0 + 216);
  if (v12)
  {
    v14 = *(v0 + 224);
    v15 = OUTLINED_FUNCTION_62_1();
    v16 = swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_62_1();
    v28 = v17;
    *v15 = 136315650;
    v18 = sub_2310C666C(v14);
    v20 = sub_2310488F8(v18, v19, &v28);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v13;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v16 = v22;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v7;
    _os_log_impl(&dword_23103C000, v11, v10, "task '%s': ran into error '%@'. scheduler accepted our request to run again in %fs", v15, 0x20u);
    sub_231051B38(v16, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_9_7();
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  v23 = *(v0 + 176);
  v25 = *(v0 + 136);
  v24 = *(v0 + 144);
  sub_231051B38(*(v0 + 184), &unk_27DD3CC20, &unk_231165900);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_1();

  return v26();
}

uint64_t sub_2310C43A4(int a1, char a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC0, &unk_231165330);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC8, &unk_231165350);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = sub_2311592D8();
  if (qword_280CCB568 != -1)
  {
    swift_once();
  }

  v17 = qword_280CCB570;
  if (os_log_type_enabled(qword_280CCB570, v16))
  {
    v18 = swift_slowAlloc();
    v38 = v15;
    v19 = v18;
    v20 = swift_slowAlloc();
    v42 = v20;
    *v19 = 136315394;
    v21 = sub_2310C666C(a2);
    v23 = sub_2310488F8(v21, v22, &v42);
    v39 = a3;
    v24 = v12;
    v25 = a4;
    v26 = v11;
    v27 = v23;

    *(v19 + 4) = v27;
    *(v19 + 12) = 2080;
    v41 = v40 & 1;
    v28 = sub_231158E68();
    v30 = sub_2310488F8(v28, v29, &v42);

    *(v19 + 14) = v30;
    v11 = v26;
    a4 = v25;
    v12 = v24;
    a3 = v39;
    _os_log_impl(&dword_23103C000, v17, v16, "task '%s': expired with reason '%s'", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319267C0](v20, -1, -1);
    v31 = v19;
    v15 = v38;
    MEMORY[0x2319267C0](v31, -1, -1);
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  atomic_store(1u, (*(**(a3 + *(v32 + 36)) + 136))());
  sub_2310B901C(a3 + *(v32 + 40), v10, &qword_27DD3CAC0, &unk_231165330);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  result = __swift_getEnumTagSinglePayload(v10, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v43[1] = 1;
    sub_2311590D8();
    (*(v12 + 8))(v15, v11);
    (*(*(v33 - 8) + 8))(v10, v33);
    v35 = a4[3];
    v36 = a4[4];
    __swift_project_boxed_opaque_existential_0(a4, v35);
    v43[0] = v40 & 1;
    return (*(v36 + 48))(v43, v35, v36);
  }

  return result;
}

uint64_t sub_2310C476C()
{
  v0 = sub_231158258();
  __swift_allocate_value_buffer(v0, qword_280CCDF80);
  __swift_project_value_buffer(v0, qword_280CCDF80);
  return sub_231158248();
}

void *sub_2310C47E0()
{
  type metadata accessor for VCDaemon();
  v0 = swift_allocObject();
  result = sub_2310C4960();
  off_280CCB3C0 = v0;
  return result;
}

uint64_t static VCDaemon.daemon.getter()
{
  if (qword_280CCB3B8 != -1)
  {
    swift_once();
  }
}

id sub_2310C4878()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v0 + 200);
  }

  else
  {
    v3 = [objc_allocWithZone(WFSystemSurfaceWorkflowStatusUpdater) initWithDatabaseProvider_];
    v4 = *(v0 + 200);
    *(v0 + 200) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_2310C48EC()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = *(v0 + 208);
  }

  else
  {
    v3 = [objc_allocWithZone(WFSiriWorkflowVocabularyUpdater) initWithDatabaseProvider_];
    v4 = *(v0 + 208);
    *(v0 + 208) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_2310C4960()
{
  v1 = v0;
  type metadata accessor for BiomeStreamWriter();
  v0[19] = 0;
  v0[20] = 0;
  v0[21] = swift_allocObject();
  type metadata accessor for DaemonTaskScheduler();
  v0[22] = 0;
  v0[23] = 0;
  v0[25] = 0;
  v0[26] = 0;
  OUTLINED_FUNCTION_8();
  swift_allocObject();
  v0[27] = DaemonTaskScheduler.init()();
  v2 = [objc_opt_self() sharedScheduler];
  v45 = sub_231054A0C(0, &qword_280CCAEE0, 0x277CF0810);
  v46 = &protocol witness table for BGSystemTaskScheduler;
  *&v44 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC58, &qword_231165910);
  v3 = swift_allocObject();
  sub_23104613C(&v44, v3 + 16);
  *(v3 + 56) = 0x4072C00000000000;
  v1[11] = v3;
  v1[2] = [objc_allocWithZone(WFUserNotificationManager) init];
  v1[3] = [objc_allocWithZone(VCDaemonDatabaseProvider) init];
  sub_231054A0C(0, &unk_280CCAEC0, off_2788FC128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC68, &qword_231165918);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231165680;
  *(v4 + 32) = @"com.apple.distnoted.matching";
  *(v4 + 40) = @"com.apple.notifyd.matching";
  *(v4 + 48) = @"com.apple.appprotection.preferences.change.event";
  *(v4 + 56) = @"com.apple.fsevents.matching";
  *(v4 + 64) = @"com.apple.diskarbitration";
  v5 = @"com.apple.distnoted.matching";
  v6 = @"com.apple.notifyd.matching";
  v7 = @"com.apple.appprotection.preferences.change.event";
  v8 = @"com.apple.fsevents.matching";
  v9 = @"com.apple.diskarbitration";
  v10 = sub_2310C4E84();
  v1[4] = v10;
  type metadata accessor for ToolKitCascadeSyncEngine();
  OUTLINED_FUNCTION_8();
  swift_allocObject();
  v1[18] = ToolKitCascadeSyncEngine.init(xpcEventHandler:)(v10);
  v11 = v1[3];
  type metadata accessor for WFSpotlightSyncService();
  OUTLINED_FUNCTION_8();
  swift_allocObject();
  v12 = v11;
  sub_23109CDC8();
  v1[13] = v13;
  v14 = [objc_allocWithZone(WFContextualActionSpotlightSyncService) initWithDaemonTaskScheduler:v1[27] databaseProvider:v1[3]];
  v1[14] = v14;
  v15 = v1[19];
  v1[19] = 0;
  v16 = v14;

  v17 = v1[20];
  v1[20] = 0;

  v18 = v1[3];
  v19 = v1[18];
  v20 = v1[19];
  type metadata accessor for VCDaemonXPCServer();
  swift_allocObject();
  v21 = v20;
  v22 = v18;

  v1[10] = sub_231093FD0(v22, v19, v20, 0, v14);
  v1[5] = [objc_allocWithZone(VCDaemonSyncDataEndpoint) initWithEventHandler_];
  v1[6] = [objc_allocWithZone(WFWorkflowRunCoordinator) initWithUserNotificationManager:v1[2] databaseProvider:v1[3]];
  v1[7] = [objc_allocWithZone(VCCKShortcutSyncCoordinator) initWithDatabaseProvider_];
  v1[8] = [objc_allocWithZone(WFTriggerRegistrar) initWithDatabaseProvider:v1[3] eventHandler:v1[4] userNotificationManager:v1[2]];
  v23 = [objc_allocWithZone(WFTopHitsAppShortcutsUpdater) initWithXPCEventHandler_];
  v1[16] = v23;
  v24 = v1[8];
  v25 = v1[5];
  v26 = v1[6];
  v27 = v1[3];
  v28 = v1[4];
  v29 = v1[14];
  v30 = objc_allocWithZone(VCXPCServer);
  v1[9] = [v30 initWithDatabaseProvider:v27 triggerRegistrar:v24 syncDataEndpoint:v25 runCoordinator:v26 eventHandler:v28 appShortcutsUpdater:v23 contextualActionSyncService:{v29, v44}];
  v1[12] = [objc_allocWithZone(VCWatchSyncCoordinator) initWithSyncDataEndpoint:v1[5] eventHandler:v1[4]];
  v31 = [objc_allocWithZone(WFRemoteWidgetDataProvider) init];
  v32 = v1[22];
  v1[22] = v31;

  v33 = v1[3];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 sharedProvider];
  v37 = [objc_allocWithZone(WFConfiguredSystemActionMigrator) initWithDatabaseProvider:v35 actionProvider:v36];

  v1[24] = v37;
  v1[15] = [objc_allocWithZone(MEMORY[0x277D7C7B8]) initAndAllowRunRequests_];
  v38 = v1[3];
  type metadata accessor for WidgetReloadingObserver();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  v40 = v1[23];
  v1[23] = v39;
  v41 = v38;

  v42 = v1[4];
  type metadata accessor for ToolKitIndexingScheduler();
  swift_allocObject();
  v1[17] = sub_2310805EC(v42);
  return v1;
}

id sub_2310C4E84()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for VCXPCEventStream(0);
  v1 = sub_231158F38();

  v2 = [v0 initWithStreams_];

  return v2;
}

uint64_t sub_2310C4EFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_280CCB410 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v4 = sub_231158258();
  __swift_project_value_buffer(v4, qword_280CCDF80);
  v5 = sub_231158238();
  v6 = sub_2311592F8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23103C000, v5, v6, "Starting daemon", v7, 2u);
    OUTLINED_FUNCTION_16();
  }

  v8 = os_transaction_create();
  v9 = sub_2311590C8();
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_8();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;

  OUTLINED_FUNCTION_14_10();

  v14 = objc_autoreleasePoolPush();
  v15 = [*(v1 + 72) voiceShortcutManager];
  [v15 deleteStaleSuggestions];

  objc_autoreleasePoolPop(v14);
  v16 = *(v1 + 16);
  aBlock[4] = sub_2310C5B68;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310C5B70;
  aBlock[3] = &block_descriptor_15;
  v17 = _Block_copy(aBlock);

  [v16 removeStaleNotificationsWithCompletion_];
  _Block_release(v17);
  v18 = *(v1 + 88);
  sub_2310C32D0();
  v19 = *(v1 + 64);
  if (v19)
  {
    [*(v1 + 64) registerAllTriggersWithCompletion_];
  }

  [*(v1 + 96) requestSyncIfUnrestricted];
  [*(v1 + 56) start];
  sub_231054A0C(0, &qword_280CCAED0, off_2788FC178);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = *(v1 + 24);
  [ObjCClassFromMetadata scheduleWithDatabaseProvider_];
  sub_231054A0C(0, &qword_280CCAEB8, off_2788FC208);
  [swift_getObjCClassFromMetadata() scheduleWithDatabaseProvider_];
  [*(v1 + 128) start];
  v22 = *(v1 + 136);
  sub_2310808A0();
  v23 = *(v1 + 144);

  sub_2310D6A90();

  if (v19)
  {
    v24 = [v19 scheduler];
    [v24 registerWithDatabaseProvider_];
  }

  v25 = [objc_opt_self() sharedManager];
  [v25 scheduleRegularPolicyUpdatesWithDatabaseProvider_];

  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v9);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v1;
  v29[5] = v8;

  OUTLINED_FUNCTION_14_10();
}

uint64_t sub_2310C52E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v4 + 176) = a4;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2310C5374, 0, 0);
}

uint64_t sub_2310C5374()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_2310C54C8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23106FF5C;
  v0[13] = &block_descriptor_57;
  v0[14] = v2;
  [v1 fetchCloudKitSyncFlagsIfNecessaryWithCompletionHandler_];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2310C54C8()
{
  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_2310C5830;
  }

  else
  {
    v3 = sub_2310C5600;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2310C5600()
{
  v26 = v1;
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1[22] + 24);
  v1[10] = 0;
  v3 = [v2 databaseWithError_];
  v4 = v1[10];
  if (v3)
  {
    v5 = v3;
    v6 = objc_opt_self();
    v7 = v4;
    [v6 migrateFromCloudKitIntoDatabaseIfNecessary_];
  }

  else
  {
    v8 = v4;
    OUTLINED_FUNCTION_10_0();
    v9 = sub_231157938();

    swift_willThrow();
    if (qword_280CCB410 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v10 = sub_231158258();
    __swift_project_value_buffer(v10, qword_280CCDF80);
    v11 = OUTLINED_FUNCTION_10_0();
    v12 = sub_231158238();
    v13 = sub_2311592D8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = OUTLINED_FUNCTION_62_1();
      v25[0] = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v17 = v1[18];
      v16 = v1[19];
      v18 = v1[20];
      v19 = sub_2311598B8();
      v21 = sub_2310488F8(v19, v20, v25);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_23103C000, v12, v13, "Failed to migrate from Peace CloudKit: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_9_7();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_1();
  v23 = *MEMORY[0x277D85DE8];

  return v22();
}

uint64_t sub_2310C5830()
{
  v18 = v0;
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = v0[23];
  swift_willThrow();
  if (qword_280CCB410 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v2 = sub_231158258();
  __swift_project_value_buffer(v2, qword_280CCDF80);
  v3 = OUTLINED_FUNCTION_10_0();
  v4 = sub_231158238();
  v5 = sub_2311592D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_62_1();
    v17[0] = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[20];
    v11 = sub_2311598B8();
    v13 = sub_2310488F8(v11, v12, v17);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_23103C000, v4, v5, "Failed to migrate from Peace CloudKit: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_16();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1();
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_2310C59EC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v5[1] = sub_23106044C;
  v7 = OUTLINED_FUNCTION_11_0();

  return sub_2310C52E4(v7, v8, v9, v3);
}

void sub_2310C5A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a3 + 64);
    if (v4)
    {
      sub_231054A0C(0, &qword_27DD3CC50, 0x277CE1F78);
      v5 = sub_231158F38();
      [v4 handleRemovedIgnoredNotifications_];
    }

    v6 = *(a3 + 48);
    sub_231054A0C(0, &qword_27DD3CC50, 0x277CE1F78);
    v7 = sub_231158F38();
    [v6 handleRemovedIgnoredNotifications_];
  }
}

uint64_t sub_2310C5B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_231054A0C(0, &qword_27DD3CC50, 0x277CE1F78);
    v4 = sub_231158F48();
  }

  if (a3)
  {
    sub_231054A0C(0, &qword_27DD3CC50, 0x277CE1F78);
    a3 = sub_231158F48();
  }

  v6(v4, a3);
}

uint64_t sub_2310C5C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v4 + 408) = a4;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2310C5CCC, 0, 0);
}

uint64_t sub_2310C5CCC()
{
  v49 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CBE0, &unk_231165E60);
  inited = swift_initStackObject();
  *(v0 + 416) = inited;
  *(inited + 16) = xmmword_231161B80;
  v3 = *(v1 + 136);
  *(inited + 56) = type metadata accessor for ToolKitIndexingScheduler();
  *(inited + 64) = &off_2845DA070;
  *(inited + 32) = v3;
  v4 = *(v1 + 168);

  OUTLINED_FUNCTION_12_6();
  v6 = v5;
  v7 = type metadata accessor for BiomeStreamWriter();
  *(v0 + 88) = v4;
  *(v0 + 112) = v7;
  *(v0 + 120) = &off_2845DC2D8;
  *(v6 + 16) = 2;
  sub_23104613C((v0 + 88), v6 + 72);
  v8 = sub_2310C48EC();
  v9 = *(v6 + 16);
  v10 = v9 + 1;
  if (v9 >= *(v6 + 24) >> 1)
  {
    OUTLINED_FUNCTION_2_14();
    v6 = v42;
  }

  v11 = *(v0 + 408);
  *(v0 + 152) = sub_231054A0C(0, &qword_27DD3CBE8, off_2788FC288);
  *(v0 + 160) = &protocol witness table for WFSiriWorkflowVocabularyUpdater;
  *(v0 + 128) = v8;
  OUTLINED_FUNCTION_11_11();
  sub_23104613C((v0 + 128), v12 + 32);
  v13 = *(v11 + 184);
  if (v13)
  {
    v14 = *(v6 + 24);
    v15 = v9 + 2;

    if (v15 > (v14 >> 1))
    {
      OUTLINED_FUNCTION_12_6();
      v6 = v45;
    }

    *(v0 + 392) = type metadata accessor for WidgetReloadingObserver();
    *(v0 + 400) = &off_2845DB648;
    *(v0 + 368) = v13;
    *(v6 + 16) = v15;
    sub_23104613C((v0 + 368), v6 + 40 * v10 + 32);
  }

  v16 = *(v0 + 408);
  v17 = sub_2310C4878();
  v18 = *(v6 + 16);
  v19 = v18 + 1;
  if (v18 >= *(v6 + 24) >> 1)
  {
    OUTLINED_FUNCTION_12_6();
    v6 = v43;
  }

  v20 = *(v0 + 408);
  *(v0 + 192) = sub_231054A0C(0, &qword_27DD3CBF0, off_2788FC298);
  *(v0 + 200) = &protocol witness table for WFSystemSurfaceWorkflowStatusUpdater;
  *(v0 + 168) = v17;
  *(v6 + 16) = v19;
  sub_23104613C((v0 + 168), v6 + 40 * v18 + 32);
  v21 = *(v6 + 24);
  v22 = v18 + 2;
  v23 = *(v20 + 192);
  if ((v18 + 2) > (v21 >> 1))
  {
    OUTLINED_FUNCTION_2_14();
    v6 = v44;
  }

  v24 = *(v0 + 408);
  *(v0 + 232) = sub_231054A0C(0, &qword_27DD3CBF8, off_2788FC228);
  *(v0 + 240) = &protocol witness table for WFConfiguredSystemActionMigrator;
  *(v0 + 208) = v23;
  *(v6 + 16) = v22;
  sub_23104613C((v0 + 208), v6 + 40 * v19 + 32);
  v25 = *(v24 + 104);
  if (v25)
  {
    v26 = *(v6 + 24);

    if ((v18 + 3) > (v26 >> 1))
    {
      OUTLINED_FUNCTION_12_6();
      v6 = v46;
    }

    *(v0 + 352) = type metadata accessor for WFSpotlightSyncService();
    *(v0 + 360) = &off_2845DB0E0;
    *(v0 + 328) = v25;
    *(v6 + 16) = v18 + 3;
    sub_23104613C((v0 + 328), v6 + 40 * v22 + 32);
  }

  v27 = *(v0 + 408);
  v28 = v27[14];
  if (v28)
  {
    v29 = *(v6 + 16);
    v30 = *(v6 + 24);
    v31 = v28;
    if (v29 >= v30 >> 1)
    {
      OUTLINED_FUNCTION_2_14();
      v6 = v47;
    }

    *(v0 + 312) = sub_231054A0C(0, &qword_280CCAE68, off_2788FC240);
    *(v0 + 320) = &protocol witness table for WFContextualActionSpotlightSyncService;
    *(v0 + 288) = v31;
    OUTLINED_FUNCTION_11_11();
    sub_23104613C((v0 + 288), v32 + 32);
    v27 = *(v0 + 408);
  }

  v33 = v27[22];
  if (v33)
  {
    v34 = *(v6 + 16);
    v35 = *(v6 + 24);
    v36 = v33;
    if (v34 >= v35 >> 1)
    {
      OUTLINED_FUNCTION_2_14();
      v6 = v48;
    }

    *(v0 + 272) = sub_231054A0C(0, &unk_27DD3CC00, off_2788FC270);
    *(v0 + 280) = &protocol witness table for WFRemoteWidgetDataProvider;
    *(v0 + 248) = v36;
    OUTLINED_FUNCTION_11_11();
    sub_23104613C((v0 + 248), v37 + 32);
    v27 = *(v0 + 408);
  }

  *(v0 + 424) = v6;
  v38 = v27[27];
  v39 = swift_task_alloc();
  *(v0 + 432) = v39;
  *v39 = v0;
  v39[1] = sub_2310C6144;
  v40 = *MEMORY[0x277D85DE8];

  return sub_23107A2D8(v6);
}

uint64_t sub_2310C6144()
{
  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 432);
  v2 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2310C6260, 0, 0);
}

uint64_t sub_2310C6260()
{
  OUTLINED_FUNCTION_4_1();
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 424);

  OUTLINED_FUNCTION_1();
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_2310C62E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_2(v5);
  *v6 = v7;
  v6[1] = sub_23105FDEC;
  v8 = OUTLINED_FUNCTION_11_0();

  return sub_2310C5C3C(v8, v9, v10, v4);
}

uint64_t VCDaemon.deinit()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 88);

  v3 = *(v0 + 104);

  v4 = *(v0 + 136);

  v5 = *(v0 + 144);

  v6 = *(v0 + 160);

  v7 = *(v0 + 168);

  v8 = *(v0 + 184);

  v9 = *(v0 + 216);

  return v0;
}

uint64_t VCDaemon.__deallocating_deinit()
{
  VCDaemon.deinit();

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t sub_2310C64AC(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = type metadata accessor for ToolKitHighPriorityDeferredFullIndexingTask();
      v2 = &unk_27DD3CBC8;
      v3 = type metadata accessor for ToolKitHighPriorityDeferredFullIndexingTask;
      break;
    case 2:
      v1 = type metadata accessor for ToolKitHighPriorityDeferredDeltaIndexingTask();
      v2 = &unk_280CCB530;
      v3 = type metadata accessor for ToolKitHighPriorityDeferredDeltaIndexingTask;
      break;
    case 3:
      v1 = type metadata accessor for ToolKitDatabaseMaintenanceTask();
      v2 = &unk_280CCB680;
      v3 = type metadata accessor for ToolKitDatabaseMaintenanceTask;
      break;
    case 4:
      v1 = type metadata accessor for SpotlightHighPriorityDeferredIndexingTask();
      v2 = &unk_27DD3CBB8;
      v3 = type metadata accessor for SpotlightHighPriorityDeferredIndexingTask;
      break;
    default:
      v1 = type metadata accessor for ToolKitLowPriorityDeferredFullIndexingTask();
      v2 = &unk_27DD3CBD8;
      v3 = type metadata accessor for ToolKitLowPriorityDeferredFullIndexingTask;
      break;
  }

  sub_2310C6B84(v2, v3);
  return v1;
}

uint64_t sub_2310C6624()
{
  sub_231159758();
  OUTLINED_FUNCTION_10_0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2310C666C(char a1)
{
  result = 0xD00000000000003BLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000003CLL;
      break;
    case 2:
      result = 0xD00000000000003DLL;
      break;
    case 3:
      result = 0xD000000000000033;
      break;
    case 4:
      result = 0xD000000000000039;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2310C6750@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2310C6624();
  *a2 = result;
  return result;
}

unint64_t sub_2310C6780@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2310C666C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for VCDaemon.DaemonBackgroundTasks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VCDaemon.DaemonBackgroundTasks(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2310C6994()
{
  result = qword_27DD3CBA8;
  if (!qword_27DD3CBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD3CBB0, &qword_2311657D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CBA8);
  }

  return result;
}

unint64_t sub_2310C69F8(void *a1)
{
  a1[1] = sub_2310C6A30();
  a1[2] = sub_2310C6A84();
  result = sub_2310C6AD8();
  a1[3] = result;
  return result;
}

unint64_t sub_2310C6A30()
{
  result = qword_280CCB3D8;
  if (!qword_280CCB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB3D8);
  }

  return result;
}

unint64_t sub_2310C6A84()
{
  result = qword_280CCB400;
  if (!qword_280CCB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB400);
  }

  return result;
}

unint64_t sub_2310C6AD8()
{
  result = qword_280CCB3E8;
  if (!qword_280CCB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB3E8);
  }

  return result;
}

unint64_t sub_2310C6B30()
{
  result = qword_280CCB3F0;
  if (!qword_280CCB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB3F0);
  }

  return result;
}

uint64_t sub_2310C6B84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2310C6BE0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a4;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_23105FDEC;

  return sub_2310C3904(a1, a2, a3, v14, a5, a6, a7);
}

uint64_t sub_2310C6CC0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v7[1] = sub_23105FDEC;
  v9 = OUTLINED_FUNCTION_11_0();

  return v10(v9);
}

uint64_t sub_2310C6D98(unsigned __int8 *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900) - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2310C6D8C(a1, (v1 + 16), v1 + v4, v5);
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_14()
{

  sub_2310CC690();
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return sub_2310798FC();
}

uint64_t OUTLINED_FUNCTION_16_7()
{
  result = v0[24];
  v2 = v0[12];
  v3 = *(v0[13] + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_231159918();
}

uint64_t sub_2310C6F34()
{
  v1 = sub_231157D78();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  v10 = sub_231157DE8();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_14();
  v16 = sub_231157C78();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  v21 = OUTLINED_FUNCTION_4_13(v20);
  v22(v21);
  v23 = OUTLINED_FUNCTION_11_12();
  v25 = v24(v23);
  if (v25 == *MEMORY[0x277D79B18])
  {
    v26 = OUTLINED_FUNCTION_3_14();
    v27(v26);
    v28 = OUTLINED_FUNCTION_8_12();
    v29(v28);
    v30 = sub_2310C823C();
    v31 = [v30 serializedData];

    if (v31)
    {
      v32 = sub_2311579A8();
    }

    else
    {
      v32 = 0;
    }

    (*(v13 + 8))(v0, v10);
    return v32;
  }

  if (v25 == *MEMORY[0x277D79B20])
  {
    v33 = OUTLINED_FUNCTION_3_14();
    v34(v33);
    v35 = OUTLINED_FUNCTION_9_14();
    v36(v35);
    v37 = sub_2310C867C();
    v38 = [v37 serializedData];

    if (v38)
    {
      v32 = sub_2311579A8();
    }

    else
    {
      v32 = 0;
    }

    (*(v4 + 8))(v9, v1);
    return v32;
  }

  result = sub_2311596C8();
  __break(1u);
  return result;
}

uint64_t TriggerType.isOneTime.getter()
{
  v1 = sub_231157DE8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  v10 = sub_231157D78();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_14();
  v16 = sub_231157C78();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  v21 = OUTLINED_FUNCTION_4_13(v20);
  v22(v21);
  v23 = OUTLINED_FUNCTION_11_12();
  v25 = v24(v23);
  if (v25 == *MEMORY[0x277D79B18])
  {
    v26 = OUTLINED_FUNCTION_3_14();
    v27(v26);
    v28 = OUTLINED_FUNCTION_9_14();
    v29(v28);
    v30 = sub_231157DB8();
    (*(v4 + 8))(v9, v1);
    return v30 & 1;
  }

  if (v25 == *MEMORY[0x277D79B20])
  {
    v31 = OUTLINED_FUNCTION_3_14();
    v32(v31);
    v33 = OUTLINED_FUNCTION_8_12();
    v34(v33);
    v30 = sub_231157D58();
    (*(v13 + 8))(v0, v10);
    return v30 & 1;
  }

  result = sub_231159808();
  __break(1u);
  return result;
}

uint64_t sub_2310C7484@<X0>(uint64_t *a1@<X8>)
{
  v163 = a1;
  v2 = sub_231157C68();
  v3 = OUTLINED_FUNCTION_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v158 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC70, &qword_2311659B8);
  v9 = OUTLINED_FUNCTION_19(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v157 = &v143[-v12];
  OUTLINED_FUNCTION_6_9();
  v150 = sub_231157DE8();
  v13 = OUTLINED_FUNCTION_4(v150);
  v151 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v149 = v18 - v17;
  OUTLINED_FUNCTION_6_9();
  v19 = sub_231157CD8();
  v20 = OUTLINED_FUNCTION_4(v19);
  v165 = v21;
  v166 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_1();
  v26 = (v24 - v25);
  MEMORY[0x28223BE20](v27);
  v164 = &v143[-v28];
  OUTLINED_FUNCTION_6_9();
  v161 = sub_231157A88();
  v29 = OUTLINED_FUNCTION_4(v161);
  v156 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_0();
  v154 = v34 - v33;
  OUTLINED_FUNCTION_6_9();
  v35 = sub_231157848();
  v36 = OUTLINED_FUNCTION_4(v35);
  v159 = v37;
  v160 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_1();
  v42 = v40 - v41;
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v143[-v45];
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_16_5();
  v155 = v47;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_16_5();
  v153 = v49;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_16_5();
  v152 = v51;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v52);
  v169 = &v143[-v53];
  OUTLINED_FUNCTION_6_9();
  v167 = sub_231157A08();
  v54 = OUTLINED_FUNCTION_4(v167);
  v171 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_9_1();
  v60 = (v58 - v59);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_16_5();
  v170 = v62;
  OUTLINED_FUNCTION_15_4();
  v64 = MEMORY[0x28223BE20](v63);
  v66 = &v143[-v65];
  MEMORY[0x28223BE20](v64);
  v68 = &v143[-v67];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC78, &qword_2311659C0);
  v70 = OUTLINED_FUNCTION_19(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_9_1();
  v168 = v73 - v74;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v75);
  v77 = &v143[-v76];
  objc_opt_self();
  v78 = swift_dynamicCastObjCClass();
  if (v78)
  {
    v79 = v78;
    v157 = v26;
    v80 = sub_231157D38();
    __swift_storeEnumTagSinglePayload(v77, 1, 1, v80);
    v158 = v1;
    v81 = [v79 startTime];
    v162 = v77;
    v82 = v79;
    if (v81)
    {
      v83 = v81;
      sub_2311579D8();

      v84 = v171[4];
      v85 = v167;
      v84(v68, v66, v167);
      v86 = [v79 endTime];
      if (v86)
      {
        v87 = v86;
        sub_2311579D8();

        v84(v170, v60, v85);
        v148 = v68;
        v88 = v154;
        sub_231157A68();
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC98, &qword_2311659C8);
        v89 = sub_231157A78();
        OUTLINED_FUNCTION_4(v89);
        v91 = v90;
        v93 = *(v92 + 72);
        v94 = *(v90 + 80);
        v151 = v79;
        v95 = (v94 + 32) & ~v94;
        v149 = v95 + 2 * v93;
        v96 = v93;
        v145 = v93;
        v97 = swift_allocObject();
        v147 = xmmword_231163950;
        *(v97 + 16) = xmmword_231163950;
        v98 = v97 + v95;
        v146 = *MEMORY[0x277CC9980];
        v99 = *(v91 + 104);
        v99(v97 + v95);
        v144 = *MEMORY[0x277CC99A0];
        v99(v98 + v96);
        sub_2310A0A00();
        sub_231157A48();

        v156 = *(v156 + 8);
        (v156)(v88, v161);
        sub_231157A68();
        v100 = swift_allocObject();
        *(v100 + 16) = v147;
        v101 = v100 + v95;
        (v99)(v100 + v95, v146, v89);
        (v99)(v101 + v145, v144, v89);
        sub_2310A0A00();
        v102 = v152;
        sub_231157A48();

        (v156)(v88, v161);
        v103 = v162;
        v105 = v159;
        v104 = v160;
        v106 = *(v159 + 16);
        v107 = v169;
        v106(v153, v169, v160);
        v106(v155, v102, v104);
        v108 = v168;
        sub_231157D28();
        v109 = *(v105 + 8);
        v109(v102, v104);
        v109(v107, v104);
        v110 = v171[1];
        v82 = v151;
        v111 = v167;
        v110(v170, v167);
        v110(v148, v111);
        sub_231060190(v103, &qword_27DD3CC78, &qword_2311659C0);
        sub_2310C8C9C(v108, v103);
      }

      else
      {
        (v171[1])(v68, v85);
      }
    }

    objc_opt_self();
    v124 = v158;
    v125 = swift_dynamicCastObjCClass();
    v127 = v164;
    v126 = v165;
    v128 = MEMORY[0x277D79B38];
    if (v125)
    {
      v128 = MEMORY[0x277D79B40];
    }

    v129 = v166;
    (*(v165 + 104))(v164, *v128, v166);
    if ([v82 region])
    {
      (*(v126 + 16))(v157, v127, v129);
      v130 = v162;
      sub_2310C85C4(v162, v168);
      v131 = sub_231157D78();
      v132 = v163;
      v163[3] = v131;
      v132[4] = sub_2310C8634(&qword_27DD3CC90, MEMORY[0x277D79B50]);
      __swift_allocate_boxed_opaque_existential_1(v132);
      sub_231157D48();

      (*(v126 + 8))(v127, v129);
      v133 = v130;
    }

    else
    {
      sub_2310C8118();
      v134 = swift_allocError();
      *v135 = 0xD000000000000025;
      v135[1] = 0x800000023116A4B0;
      v172 = v134;
      swift_willThrow();

      (*(v126 + 8))(v127, v129);
      v133 = v162;
    }

    return sub_231060190(v133, &qword_27DD3CC78, &qword_2311659C0);
  }

  else
  {
    v112 = v46;
    v113 = v157;
    v114 = v158;
    objc_opt_self();
    v115 = swift_dynamicCastObjCClass();
    if (v115)
    {
      v116 = v115;
      v171 = v1;
      v117 = [v116 time];
      if (v117)
      {
        v118 = v117;
        sub_231157838();

        v120 = v159;
        v119 = v160;
        (*(v159 + 32))(v112, v42, v160);
        sub_2310C8344(v114);
        (*(v120 + 16))(v169, v112, v119);
        sub_231157DD8();
        v121 = v150;
        if (__swift_getEnumTagSinglePayload(v113, 1, v150) == 1)
        {
          sub_231060190(v113, &qword_27DD3CC70, &qword_2311659B8);
          sub_2310C8118();
          v122 = swift_allocError();
          *v123 = 0xD000000000000024;
          v123[1] = 0x800000023116A480;
          v172 = v122;
          swift_willThrow();
        }

        else
        {
          v139 = v151[4];
          v140 = v149;
          v139(v149, v113, v121);
          v141 = v163;
          v163[3] = v121;
          v141[4] = sub_2310C8634(&qword_27DD3CC88, MEMORY[0x277D79B70]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v141);
          v139(boxed_opaque_existential_1, v140, v121);
        }

        return (*(v120 + 8))(v112, v119);
      }

      else
      {
        OUTLINED_FUNCTION_13_12();
        result = sub_2311596C8();
        __break(1u);
      }
    }

    else
    {
      sub_2310C8118();
      v137 = swift_allocError();
      *v138 = 0xD000000000000018;
      v138[1] = 0x800000023116A3D0;
      v172 = v137;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_2310C8118()
{
  result = qword_27DD3CC80;
  if (!qword_27DD3CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CC80);
  }

  return result;
}

unint64_t sub_2310C816C(uint64_t a1, unint64_t a2)
{
  sub_231159588();

  if (a2)
  {
    v4 = a2;
  }

  else
  {

    v4 = 0xE700000000000000;
    a1 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x231924980](a1, v4);

  MEMORY[0x231924980](46, 0xE100000000000000);
  return 0xD000000000000027;
}

id sub_2310C823C()
{
  v0 = sub_231157848();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  v9 = [objc_allocWithZone(MEMORY[0x277D7C958]) init];
  [v9 setMode_];
  sub_231157DC8();
  v10 = sub_231157828();
  (*(v3 + 8))(v8, v0);
  [v9 setTime_];

  return v9;
}

char *sub_2310C8344@<X0>(void *a1@<X8>)
{
  if (![v1 mode])
  {
    v7 = [v1 daysOfWeek];
    sub_2310C8D0C();
    v8 = sub_231158F48();

    v9 = sub_23106FF58(v8);

    if (v9 == 7)
    {
      v6 = MEMORY[0x277D79B00];
    }

    else
    {
      v11 = [v1 daysOfWeek];
      v12 = sub_231158F48();

      v13 = sub_23106FF58(v12);
      if (v13)
      {
        v14 = v13;
        v27 = a1;
        v28 = MEMORY[0x277D84F90];
        result = sub_23104CC4C(0, v13 & ~(v13 >> 63), 0);
        if (v14 < 0)
        {
          __break(1u);
          return result;
        }

        v16 = 0;
        v17 = v28;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x231925080](v16, v12);
          }

          else
          {
            v18 = *(v12 + 8 * v16 + 32);
          }

          v19 = v18;
          v20 = [v18 integerValue];

          v22 = *(v28 + 16);
          v21 = *(v28 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_23104CC4C((v21 > 1), v22 + 1, 1);
          }

          ++v16;
          *(v28 + 16) = v22 + 1;
          *(v28 + 8 * v22 + 32) = v20;
        }

        while (v14 != v16);

        a1 = v27;
      }

      else
      {

        v17 = MEMORY[0x277D84F90];
      }

      *a1 = v17;
      v6 = MEMORY[0x277D79B08];
    }

    goto LABEL_19;
  }

  v3 = [v1 dayOfMonth];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 integerValue];

    *a1 = v5;
    v6 = MEMORY[0x277D79B10];
LABEL_19:
    v10 = *v6;
    goto LABEL_20;
  }

  v10 = *MEMORY[0x277D79B00];
LABEL_20:
  v23 = sub_231157C68();
  OUTLINED_FUNCTION_11(v23);
  v26 = *(v25 + 104);

  return v26(a1, v10, v24);
}

uint64_t sub_2310C85C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC78, &qword_2311659C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310C8634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2310C867C()
{
  v1 = sub_231157848();
  v2 = OUTLINED_FUNCTION_4(v1);
  v65 = v3;
  v66 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_14();
  v64 = sub_231157A88();
  v6 = OUTLINED_FUNCTION_4(v64);
  v69 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CCA0, &qword_2311659D0);
  v14 = OUTLINED_FUNCTION_19(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  v62 = v17 - v18;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC78, &qword_2311659C0);
  v23 = OUTLINED_FUNCTION_19(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v62 - v26;
  v68 = sub_231157D38();
  v28 = OUTLINED_FUNCTION_4(v68);
  v63 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_0();
  v67 = v33 - v32;
  OUTLINED_FUNCTION_6_9();
  v34 = sub_231157CD8();
  v35 = OUTLINED_FUNCTION_4(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v62 - v44;
  sub_231157CE8();
  v46 = (*(v37 + 88))(v45, v34);
  if (v46 == *MEMORY[0x277D79B38])
  {
    v47 = 0x277D7C568;
  }

  else
  {
    if (v46 != *MEMORY[0x277D79B40])
    {
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_231159588();
      MEMORY[0x231924980](0x206E776F6E6B6E55, 0xE800000000000000);
      sub_231157CE8();
      sub_231159688();
      (*(v37 + 8))(v42, v34);
      MEMORY[0x231924980](0xD000000000000031, 0x800000023116A500);
      OUTLINED_FUNCTION_13_12();
      result = sub_2311596C8();
      __break(1u);
      return result;
    }

    v47 = 0x277D7C150;
  }

  v48 = [objc_allocWithZone(*v47) init];
  sub_231157D68();
  v49 = v68;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v68);
  v51 = v65;
  if (EnumTagSinglePayload == 1)
  {
    sub_231060190(v27, &qword_27DD3CC78, &qword_2311659C0);
  }

  else
  {
    (*(v63 + 32))(v67, v27, v49);
    sub_231157A68();
    sub_231157D18();
    sub_231157A58();
    v52 = *(v51 + 8);
    v52(v0, v66);
    v53 = *(v69 + 8);
    v69 += 8;
    v53(v12, v64);
    v54 = sub_231157A08();
    v55 = 0;
    if (__swift_getEnumTagSinglePayload(v21, 1, v54) != 1)
    {
      v55 = sub_2311579B8();
      OUTLINED_FUNCTION_11(v54);
      (*(v56 + 8))(v21, v54);
    }

    [v48 setStartTime_];

    sub_231157A68();
    sub_231157D08();
    v57 = v62;
    sub_231157A58();
    v52(v0, v66);
    v53(v12, v64);
    if (__swift_getEnumTagSinglePayload(v57, 1, v54) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_2311579B8();
      OUTLINED_FUNCTION_11(v54);
      (*(v59 + 8))(v57, v54);
    }

    [v48 setEndTime_];

    (*(v63 + 8))(v67, v68);
  }

  v60 = sub_231157CF8();
  [v48 setRegion_];

  return v48;
}

uint64_t sub_2310C8C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC78, &qword_2311659C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2310C8D0C()
{
  result = qword_280CCAE60;
  if (!qword_280CCAE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CCAE60);
  }

  return result;
}

uint64_t sub_2310C8D50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2310C8DA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_13@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

VoiceShortcuts::DistributedNotificationEventDescriptor __swiftcall DistributedNotificationEventDescriptor.init(eventName:)(__C::VCXPCEventName eventName)
{
  v3 = v1;
  v4 = sub_231158E58();
  v6 = v5;

  *v3 = v4;
  v3[1] = v6;
  result.name._object = v8;
  result.name._countAndFlagsBits = v7;
  return result;
}

uint64_t static DistributedNotificationEventDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t DistributedNotificationEventDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_231158EA8();
}

uint64_t DistributedNotificationEventDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

unint64_t XPCDistributedNotificationEventStream.Event.description.getter()
{
  sub_231159588();

  v0 = sub_2311580F8();
  MEMORY[0x231924980](v0);

  MEMORY[0x231924980](0x6E4972657375202CLL, 0xEB000000003D6F66);
  if (sub_231158108())
  {
    v1 = sub_231158DA8();
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x231924980](v1, v3);

  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t XPCDistributedNotificationEventStream.descriptor(for:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2311580F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2310C90C0(uint64_t a1)
{
  result = sub_2310C90E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310C90E8()
{
  result = qword_280CCB588;
  if (!qword_280CCB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB588);
  }

  return result;
}

unint64_t sub_2310C9140()
{
  result = qword_280CCB580;
  if (!qword_280CCB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB580);
  }

  return result;
}

uint64_t sub_2310C9194(uint64_t a1)
{
  result = sub_2310C92E0(&qword_280CCB0D0, MEMORY[0x277D79D10]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310C91F0()
{
  result = qword_280CCB578;
  if (!qword_280CCB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB578);
  }

  return result;
}

uint64_t sub_2310C925C(uint64_t a1)
{
  v2 = MEMORY[0x277D79D30];
  *(a1 + 8) = sub_2310C92E0(&qword_280CCB0C0, MEMORY[0x277D79D30]);
  result = sub_2310C92E0(&qword_280CCB0C8, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2310C92E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WFRemoteWidgetDataProvider.tasks.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD000000000000020;
  *(v2 + 24) = 0x800000023116A5B0;
  OUTLINED_FUNCTION_26_1();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_231072558;
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_26_1();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_231165BD8;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x800000023116A590;
  *(inited + 48) = sub_231072560;
  *(inited + 56) = v3;
  *(inited + 64) = 2;
  *(inited + 72) = &unk_231165BE0;
  *(inited + 80) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000019;
  *(v7 + 24) = 0x800000023116A600;
  OUTLINED_FUNCTION_26_1();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2310C99D8;
  *(v8 + 24) = v7;
  OUTLINED_FUNCTION_26_1();
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_231165BF8;
  *(v9 + 24) = v6;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_231161B80;
  *(v10 + 32) = 0xD00000000000001CLL;
  *(v10 + 40) = 0x800000023116A5E0;
  *(v10 + 48) = sub_2310C99E0;
  *(v10 + 56) = v8;
  *(v10 + 64) = 2;
  *(v10 + 72) = &unk_231165C00;
  *(v10 + 80) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_231163950;
  *(v11 + 32) = inited;
  *(v11 + 40) = v10;
  v12 = v0;
  v13 = static TaskBuilder.buildBlock(_:)(v11);
  swift_setDeallocating();
  sub_2310639FC();
  return v13;
}

uint64_t sub_2310C9604()
{
  OUTLINED_FUNCTION_4_1();
  [*(v0 + 16) startNetworkListenerWithType_];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2310C9670()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_19_3(v3);

  return sub_2310C95E4(v5, v1);
}

uint64_t sub_2310C96FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2310C971C, 0, 0);
}

uint64_t sub_2310C971C()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 16);
  [*(v0 + 24) startNetworkListenerWithType_];
  sub_231157F48();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2310C97B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_19_3(v4);

  return sub_231062180();
}

uint64_t sub_2310C984C()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2310C993C()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_19_3(v3);

  return sub_2310C96FC(v5, v1);
}

uint64_t sub_2310C99E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_19_3(v4);

  return sub_2310637B8();
}

uint64_t static CSSearchQuery.performDiff(of:in:with:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, unint64_t, void (*)(uint64_t a1, void *a2), void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v8 = a3;
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = (a2 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      sub_231159588();

      MEMORY[0x231924980](v13, v12);

      MEMORY[0x231924980](34, 0xE100000000000000);
      MEMORY[0x231924980](0xD00000000000001ALL, 0x8000000231169640);

      v11 += 2;
      --v10;
    }

    while (v10);
    v8 = a3;
    v7 = a5;
  }

  v14 = swift_allocObject();
  v14[2] = v7;
  v14[3] = a6;
  v14[4] = a1;

  v8(0, 0xE000000000000000, sub_2310C9E98, v14);
}

void sub_2310C9C40(uint64_t a1, id a2, void (*a3)(uint64_t, uint64_t, id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], a2);
  }

  else
  {
    v34 = MEMORY[0x277D84FA0];
    v10 = a1 + 56;
    v9 = *(a1 + 56);
    v33 = MEMORY[0x277D84FA0];
    v11 = 1 << *(a1 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v9;
    v14 = (v11 + 63) >> 6;
    v15 = a5 + 56;

    v17 = 0;
    v31 = v16;
    if (v13)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return;
      }

      if (v18 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v18);
      ++v17;
      if (v13)
      {
        v17 = v18;
        do
        {
LABEL_13:
          v19 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          v20 = (*(v16 + 48) + ((v17 << 10) | (16 * v19)));
          v21 = *v20;
          v22 = v20[1];
          if (*(a5 + 16))
          {
            v23 = *(a5 + 40);
            sub_231159918();

            sub_231158EA8();
            v24 = sub_231159948();
            v25 = ~(-1 << *(a5 + 32));
            do
            {
              v26 = v24 & v25;
              if (((*(v15 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
              {
                break;
              }

              v27 = (*(a5 + 48) + 16 * v26);
              if (*v27 == v21 && v27[1] == v22)
              {
                break;
              }

              v29 = sub_231159818();
              v24 = v26 + 1;
            }

            while ((v29 & 1) == 0);
          }

          else
          {
          }

          sub_2310DF3EC(&v32, v21, v22);

          v16 = v31;
        }

        while (v13);
      }
    }

    a3(v34, v33, 0);
  }
}

uint64_t sub_2310C9EA4(int a1, int a2, int a3, int a4, void *aBlock, const void *a6)
{
  v7 = _Block_copy(aBlock);
  v8 = _Block_copy(a6);
  v9 = sub_231159178();
  v10 = sub_231158F48();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  static CSSearchQuery.performDiff(of:in:with:completion:)(v9, v10, sub_2310CA094, v11, sub_2310CA1F8, v12);
}

uint64_t sub_2310C9FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_231158E28();
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2310CA09C;
  v12[3] = &block_descriptor_16;
  v9 = _Block_copy(v12);
  v10 = *(a5 + 16);

  v10(a5, v8, v9);
  _Block_release(v9);
}

void sub_2310CA09C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_231159178();

  v7 = a3;
  v5(v6, a3);
}

void sub_2310CA134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_231159168();
  v7 = sub_231159168();
  if (a3)
  {
    v8 = sub_231157928();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v6, v7);
}

uint64_t static RapportEventDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t RapportEventDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_231158EA8();
}

uint64_t RapportEventDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t XPCRapportEventStream.descriptor(for:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231157F38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2310CA2CC(uint64_t a1)
{
  result = sub_2310CA2F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310CA2F4()
{
  result = qword_27DD3CCA8;
  if (!qword_27DD3CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CCA8);
  }

  return result;
}

unint64_t sub_2310CA34C()
{
  result = qword_27DD3CCB0;
  if (!qword_27DD3CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CCB0);
  }

  return result;
}

uint64_t sub_2310CA3A0(uint64_t a1)
{
  result = sub_2310CA4EC(&qword_27DD3CB58, MEMORY[0x277D79C78]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310CA3FC()
{
  result = qword_27DD3CCB8[0];
  if (!qword_27DD3CCB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD3CCB8);
  }

  return result;
}

uint64_t sub_2310CA468(uint64_t a1)
{
  v2 = MEMORY[0x277D79C98];
  *(a1 + 8) = sub_2310CA4EC(&qword_27DD3CB48, MEMORY[0x277D79C98]);
  result = sub_2310CA4EC(&qword_27DD3C2A0, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2310CA4EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EventNode.debounced(delay:maximumDelay:)(double a1, double a2)
{
  type metadata accessor for EventDebouncer();
  v4 = swift_unknownObjectRetain();
  return sub_2310CA5E0(v4, a1, a2);
}

uint64_t sub_2310CA5E0(uint64_t a1, double a2, double a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_2310CA9F4(a1, a2, a3);
  return v9;
}

uint64_t sub_2310CA638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v5 = *a1;
  result = sub_2310CA760();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 32) = v8;
    *(result + 40) = v9;
    v10 = sub_231067678;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t sub_2310CA6C4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_231067650;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *a2;
  sub_231042684(v5);
  return sub_2310CA7B0(v9, v8);
}

uint64_t sub_2310CA760()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_231042684(v1);
  return v1;
}

uint64_t sub_2310CA7B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_231046164(v5);
}

uint64_t sub_2310CA854@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_15();
  v5 = *(v4 + 128);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_15();
  v7 = *(v6 + 88);
  v8 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  v9 = sub_231159448();
  OUTLINED_FUNCTION_13_0(v9);
  return (*(v10 + 16))(a1, &v1[v5]);
}

uint64_t sub_2310CA920(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_15();
  v5 = *(v4 + 128);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_15();
  v7 = *(v6 + 88);
  v8 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  v9 = sub_231159448();
  OUTLINED_FUNCTION_13_0(v9);
  (*(v10 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

void *sub_2310CA9F4(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_231159328();
  v10 = OUTLINED_FUNCTION_4(v9);
  v33 = v11;
  v34 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v16 = v15 - v14;
  v17 = sub_231159318();
  v18 = OUTLINED_FUNCTION_13_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  v21 = sub_231158D48();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_5_0();
  v3[5] = 0;
  v3[6] = 0;
  v23 = v8[16];
  v24 = v8[11];
  v35 = v8[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v3 + v23, 1, 1, AssociatedTypeWitness);
  v3[3] = a1;
  sub_23104CA2C();
  swift_unknownObjectRetain();
  sub_231158D08();
  sub_2310CBA50(&unk_280CCAF10, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  sub_231040C5C(&qword_280CCAFC0, &qword_27DD3BC00, &unk_231161AB0);
  sub_231159498();
  (*(v33 + 104))(v16, *MEMORY[0x277D85260], v34);
  v26 = sub_231159358();
  v4[4] = v26;
  v27 = [objc_allocWithZone(MEMORY[0x277D79F00]) initWithDelay:v26 maximumDelay:a2 queue:a3];
  v4[2] = v27;
  [v27 addTarget:v4 action:sel_fire_];
  v28 = v4[3];
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v35;
  v30[3] = v24;
  v30[4] = v29;
  v31 = *(v24 + 32);
  swift_unknownObjectRetain();

  v31(sub_2310CBA98, v30, v35, v24);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_2310CADA0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2310CAE00(a1);
  }

  return result;
}

uint64_t sub_2310CAE00(uint64_t a1)
{
  v3 = *v1;
  v35 = sub_231158CF8();
  v4 = OUTLINED_FUNCTION_4(v35);
  v37 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v36 = sub_231158D48();
  v11 = OUTLINED_FUNCTION_4(v36);
  v34 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v17 = v16 - v15;
  v18 = *(v3 + 88);
  v19 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = OUTLINED_FUNCTION_4(AssociatedTypeWitness);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v27 = &v33 - v26;
  v33 = v1[4];
  (*(v23 + 16))(&v33 - v26, a1, AssociatedTypeWitness);
  v28 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = v19;
  *(v29 + 3) = v18;
  *(v29 + 4) = v1;
  (*(v23 + 32))(&v29[v28], v27, AssociatedTypeWitness);
  aBlock[4] = sub_2310CB9D0;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231040F30;
  aBlock[3] = &block_descriptor_17;
  v30 = _Block_copy(aBlock);

  sub_231158D08();
  v38 = MEMORY[0x277D84F90];
  sub_2310CBA50(&qword_280CCB090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C750, &qword_231161B50);
  sub_231040C5C(qword_280CCAFD0, &unk_27DD3C750, &qword_231161B50);
  v31 = v35;
  sub_231159498();
  MEMORY[0x231924E10](0, v17, v10, v30);
  _Block_release(v30);
  (*(v37 + 8))(v10, v31);
  (*(v34 + 8))(v17, v36);
}

id sub_2310CB1A0(id *a1, uint64_t a2)
{
  v21 = a2;
  v3 = *(*a1 + 10);
  v20 = *(*a1 + 11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_231159448();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v20 - v16;
  sub_2310CA854(v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v13, v5);
    (*(v14 + 16))(v10, v21, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, AssociatedTypeWitness);
    sub_2310CA920(v10);
  }

  else
  {
    (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 16))(v21, AssociatedTypeWitness, AssociatedConformanceWitness);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, AssociatedTypeWitness);
    sub_2310CA920(v10);
    (*(v14 + 8))(v17, AssociatedTypeWitness);
  }

  return [a1[2] poke];
}

uint64_t sub_2310CB46C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_231159448();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v23 - v18;
  sub_2310CA854(v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v15, v4);
  }

  (*(v16 + 32))(v19, v15, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, AssociatedTypeWitness);
  sub_2310CA920(v12);
  v21 = sub_2310CA760();
  if (v21)
  {
    v22 = v21;
    v21(v19);
    sub_231046164(v22);
  }

  return (*(v16 + 8))(v19, AssociatedTypeWitness);
}

uint64_t sub_2310CB69C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_2310CB46C();
}

uint64_t *EventDebouncer.deinit()
{
  v1 = *v0;

  v2 = v0[3];
  swift_unknownObjectRelease();

  v3 = v0[6];
  sub_231046164(v0[5]);
  v4 = *(*v0 + 128);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  v7 = sub_231159448();
  OUTLINED_FUNCTION_13_0(v7);
  (*(v8 + 8))(v0 + v4);
  return v0;
}

uint64_t EventDebouncer.__deallocating_deinit()
{
  EventDebouncer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void (*sub_2310CB81C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_2310CA804();
  return sub_231056514;
}

uint64_t sub_2310CB878(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  result = sub_231159448();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_2310CB9D0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_2310CB1A0(v4, v5);
}

uint64_t sub_2310CBA50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2310CBA98(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2310CADA0(a1);
}

uint64_t static TaskBuilder.buildExpression(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_231161B80;
  *(v7 + 32) = v2;
  *(v7 + 40) = *(a1 + 1);
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;

  return v7;
}

uint64_t static TaskBuilder.buildOptional(_:)(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(a1 + 16);
  v2 = (a1 + 80);
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    v4 = *(v2 - 6);
    v6 = *(v2 - 3);
    v5 = *(v2 - 2);
    v7 = *(v2 - 1);
    v8 = *v2;
    v15 = *(v2 - 5);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = *(i + 16);
      sub_2310CC0AC();
      i = v12;
    }

    v9 = *(i + 16);
    if (v9 >= *(i + 24) >> 1)
    {
      sub_2310CC0AC();
      i = v13;
    }

    *(i + 16) = v9 + 1;
    v10 = i + 56 * v9;
    *(v10 + 32) = v4;
    *(v10 + 40) = v15;
    *(v10 + 56) = v6;
    *(v10 + 64) = v5;
    *(v10 + 72) = v7;
    *(v10 + 80) = v8;
    v2 += 7;
  }

  return i;
}

void sub_2310CBCD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  v3 = (a1 + 32);
  if (v1)
  {
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = *(v2 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      v7 = *v3;

      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v2 + 24) >> 1)
      {
        sub_2310CC0AC();
        v2 = v8;
      }

      if (*(v4 + 16))
      {
        if ((*(v2 + 24) >> 1) - *(v2 + 16) < v5)
        {
          goto LABEL_16;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v2 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_17;
          }

          *(v2 + 16) = v11;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v3;
      if (!--v1)
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
  }
}