void sub_1E3FCFADC(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v6 = sub_1E32AE9B0(a3);
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v19 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = MEMORY[0x1E69E7CC0];
  v18 = a1;
  while (v6 != v7)
  {
    if (v8)
    {
      v10 = MEMORY[0x1E6911E60](v7, v4);
    }

    else
    {
      if (v7 >= *(v19 + 16))
      {
        goto LABEL_19;
      }

      v10 = *(v4 + 8 * v7 + 32);
    }

    v11 = v10;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v22 = v10;
    a1(&v20, &v22);
    if (v3)
    {

      return;
    }

    if ((v21 & 1) == 0)
    {
      v12 = v4;
      v13 = v6;
      v14 = v8;
      v15 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1E3997AA8(0, *(v9 + 2) + 1, 1, v9);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      if (v17 >= v16 >> 1)
      {
        v9 = sub_1E3997AA8((v16 > 1), v17 + 1, 1, v9);
      }

      *(v9 + 2) = v17 + 1;
      *&v9[8 * v17 + 32] = v15;
      a1 = v18;
      v8 = v14;
      v6 = v13;
      v4 = v12;
    }

    ++v7;
  }
}

uint64_t sub_1E3FCFC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1E4205AF4();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_1E4205AF4();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

void sub_1E3FCFD40()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4205754();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_9();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  v2 = OUTLINED_FUNCTION_74();
  v4 = v3(v2);
  if (v4 == *MEMORY[0x1E69D3B90] || v4 == *MEMORY[0x1E69D3B68] || v4 == *MEMORY[0x1E69D3B70])
  {
    v7 = 1702259052;
    v8 = 0xE400000000000000;
  }

  else if (v4 == *MEMORY[0x1E69D3B78])
  {
    v8 = 0xE400000000000000;
    v7 = 1953722224;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_74();
    v10(v9);
    v8 = 0xE300000000000000;
    v7 = 6648432;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  OUTLINED_FUNCTION_84_21();
  v13[4] = v12 & 0xFFFF0000FFFFFFFFLL | 0x644900000000;
  v13[5] = 0xE600000000000000;
  v14 = *(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_sportingEventID);
  v15 = *(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_sportingEventID + 8);
  v16 = MEMORY[0x1E69E6158];
  v13[6] = v14;
  v13[7] = v15;
  OUTLINED_FUNCTION_84_21();
  v18[9] = v16;
  v18[10] = v17 | 0x6570795400000000;
  v18[11] = 0xE800000000000000;
  v18[12] = 0x6C50794279616C50;
  v18[13] = 0xEA00000000007961;
  v18[15] = v16;
  v18[16] = 1701273968;
  v18[17] = 0xE400000000000000;

  MEMORY[0x1E69109E0](v14, v15);
  *(inited + 144) = 0x6C50794279616C50;
  *(inited + 152) = 0xEB000000005F7961;
  OUTLINED_FUNCTION_84_21();
  *(inited + 168) = v16;
  *(inited + 176) = v19 | 0x746E6F4300000000;
  *(inited + 184) = 0xEB00000000747865;
  *(inited + 192) = 0x776F6E6863746177;
  *(inited + 200) = 0xE800000000000000;
  OUTLINED_FUNCTION_84_21();
  *(inited + 216) = v16;
  *(inited + 224) = v20 | 0x6174654400000000;
  *(inited + 232) = 0xEB00000000736C69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1E4297BE0;
  *(v21 + 32) = 0x74617453656D6167;
  *(v21 + 40) = 0xE900000000000065;
  *(v21 + 48) = v7;
  *(v21 + 56) = v8;
  v22 = sub_1E4205CB4();
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
  *(inited + 240) = v22;
  OUTLINED_FUNCTION_34();
  sub_1E4205CB4();
  objc_opt_self();
  v23 = OUTLINED_FUNCTION_11_5();
  sub_1E3744600(v23);

  v24 = sub_1E4205C44();

  v25 = [inited createWithMetricsData_];

  v26 = [objc_opt_self() sharedInstance];
  [v26 recordPage_];

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FD011C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3FD01A4();
}

uint64_t sub_1E3FD01A4()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 128) = v0;
  *(v1 + 264) = v2;
  v3 = sub_1E41FFCB4();
  *(v1 + 136) = v3;
  OUTLINED_FUNCTION_8_0(v3);
  *(v1 + 144) = v4;
  *(v1 + 152) = OUTLINED_FUNCTION_86_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA80);
  *(v1 + 160) = v5;
  OUTLINED_FUNCTION_8_0(v5);
  *(v1 + 168) = v6;
  *(v1 + 176) = OUTLINED_FUNCTION_86_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v7);
  *(v1 + 184) = OUTLINED_FUNCTION_86_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA90);
  *(v1 + 192) = v8;
  OUTLINED_FUNCTION_8_0(v8);
  *(v1 + 200) = v9;
  *(v1 + 208) = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  *(v1 + 216) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v11 = sub_1E42063B4();
  *(v1 + 224) = v11;
  *(v1 + 232) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E3FD0360, v11, v10);
}

uint64_t sub_1E3FD0360()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v27 = *(v0 + 192);
  v28 = *(v0 + 200);
  v31 = *(v0 + 176);
  v32 = *(v0 + 160);
  v33 = *(v0 + 168);
  v29 = *(v0 + 264);
  sub_1E4205004();
  v3 = sub_1E4204FF4();
  v26 = sub_1E4204FB4();

  *(v0 + 88) = v26;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v4 = sub_1E4206A04();
  *(v0 + 96) = v4;
  v30 = sub_1E42069A4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C08);
  OUTLINED_FUNCTION_86_19();
  sub_1E3A1558C(v9, v10);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F858(v2, &unk_1ECF2D2B0);

  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v29;
  sub_1E3A1558C(&qword_1EE28A2A0, &unk_1ECF3DA90);
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  (*(v28 + 8))(v1, v27);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  v13 = sub_1E4204FF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B550);
  v14 = sub_1E4205484();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E4297BE0;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x1E69D3B20], v14);
  v19 = sub_1E4204FE4();

  *(v0 + 104) = v19;
  v20 = sub_1E4206A04();
  *(v0 + 112) = v20;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAA0);
  sub_1E3A1558C(&qword_1EE28A1E0, &qword_1ECF3DAA0);
  sub_1E42007D4();
  sub_1E325F858(v2, &unk_1ECF2D2B0);

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E3A1558C(&qword_1EE28A290, &unk_1ECF3DA80);
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  (*(v33 + 8))(v31, v32);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  v24 = swift_task_alloc();
  *(v0 + 240) = v24;
  *v24 = v0;
  OUTLINED_FUNCTION_56_1(v24);

  return sub_1E3FD1AA4();
}

uint64_t sub_1E3FD08B4()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v5[31] = v0;

  if (v0)
  {
    v9 = v5[28];
    v10 = v5[29];
    v11 = sub_1E3FD0B34;
  }

  else
  {
    v5[32] = v3;
    v9 = v5[28];
    v10 = v5[29];
    v11 = sub_1E3FD09C8;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1E3FD09C8()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 256);

  sub_1E3FCDF54(v1);
  v2 = *(v0 + 128);
  if (*(v2 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_refreshEventStateTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1E4206B84();
    swift_unknownObjectRelease();
    v2 = *(v0 + 128);
  }

  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E42056A4();

    sub_1E4205064();
    v6 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawPlays;

    v8 = sub_1E3FCC2B4(v7);

    *(v2 + v6) = v8;

    sub_1E3FCDFCC();
  }

  sub_1E3FE4198();

  OUTLINED_FUNCTION_54();

  return v9();
}

uint64_t sub_1E3FD0B34()
{
  v30 = v0;
  v1 = *(v0 + 264);

  v2 = *(v0 + 248);
  if (v1)
  {
  }

  else
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 136);
    v6 = sub_1E3E37F30();
    (*(v4 + 16))(v3, v6, v5);
    v7 = v2;
    v8 = sub_1E41FFC94();
    v9 = sub_1E42067F4();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 248);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 136);
    if (v10)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_1E4207AB4();
      v19 = sub_1E3270FC8(v17, v18, &v29);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1E323F000, v8, v9, "See All failed to fetch event subscription. error = %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v13 + 8))(v12, v14);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }
  }

  v20 = *(v0 + 128);
  if (*(v20 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_refreshEventStateTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1E4206B84();
    swift_unknownObjectRelease();
    v20 = *(v0 + 128);
  }

  v21 = *(v20 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawSubscription);
  if (v21)
  {
    v22 = v21;
    v23 = sub_1E42056A4();

    sub_1E4205064();
    v24 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawPlays;

    v26 = sub_1E3FCC2B4(v25);

    *(v20 + v24) = v26;

    sub_1E3FCDFCC();
  }

  sub_1E3FE4198();

  OUTLINED_FUNCTION_54();

  return v27();
}

void sub_1E3FD0E04()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4206C04();
  OUTLINED_FUNCTION_8_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_9();
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E3FD70F0(&qword_1EE23B130, MEMORY[0x1E6969F20]);
  sub_1E4200844();

  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_74();
  v5(v6);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  v7 = [v3 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E4200844();

  v8 = OUTLINED_FUNCTION_74();
  v5(v8);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FD1064()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_32_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_2();
  v10 = sub_1E3E36DD8(5, 0x4008000000000000, 1);
  v12 = v11;
  sub_1E4206444();
  sub_1E4206474();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_4_0();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v17;
  *(v18 + 40) = v10;
  *(v18 + 48) = v12;
  *(v18 + 56) = v2;
  *(v18 + 64) = v6;
  *(v18 + 72) = v4;
  swift_unknownObjectRetain();

  v19 = OUTLINED_FUNCTION_23_7();
  sub_1E3CC3FD0(v19, v20, v0, v21, v18);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_21_1();
  sub_1E325F858(v22, v23);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FD11B8()
{
  OUTLINED_FUNCTION_31_1();
  v66 = v3;
  v67 = v0;
  v54 = v4;
  v52 = v5;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v58 = v7;
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v56 = v9 - v8;
  OUTLINED_FUNCTION_138();
  v57 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v55 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v53 = v13 - v12;
  OUTLINED_FUNCTION_138();
  sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v64 = v15;
  v65 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v63 = (v17 - v16);
  OUTLINED_FUNCTION_138();
  sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v61 = v19;
  v62 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v51 - v24;
  OUTLINED_FUNCTION_138();
  v25 = sub_1E4206AE4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_9();
  v29 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  sub_1E3280A90(0, &qword_1EE23B180);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  (*(v31 + 104))(v2, *MEMORY[0x1E69E7F88], v29);
  v33 = sub_1E4206A54();
  (*(v31 + 8))(v2, v29);
  v68[0] = MEMORY[0x1E69E7CC0];
  sub_1E3FD70F0(&qword_1ECF3DA68, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA70);
  OUTLINED_FUNCTION_47();
  sub_1E3A1558C(v34, v35);
  sub_1E42072E4();
  v36 = v67;
  v37 = sub_1E4206AF4();

  (*(v27 + 8))(v1, v25);
  v38 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_refreshEventStateTimer;
  *(v36 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_refreshEventStateTimer) = v37;
  swift_unknownObjectRelease();
  if (*(v36 + v38))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1E4204004();
    v40 = v60;
    v41 = v66;
    MEMORY[0x1E690E9C0](v22, v66);
    v42 = v62;
    v43 = *(v61 + 8);
    v43(v22, v62);
    v44 = v63;
    sub_1E3FD42DC(v63);
    MEMORY[0x1E69116A0](v40, v41, v44, ObjectType);
    swift_unknownObjectRelease();
    (*(v64 + 8))(v44, v65);
    v43(v40, v42);
    if (*(v36 + v38))
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_4_0();
      v45 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_5_10();
      v46 = swift_allocObject();
      v47 = v52;
      v46[2] = v45;
      v46[3] = v47;
      v46[4] = v54;
      v68[4] = sub_1E3FD7134;
      v68[5] = v46;
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 1107296256;
      v68[2] = sub_1E378AEA4;
      v68[3] = &block_descriptor_150;
      v48 = _Block_copy(v68);
      swift_unknownObjectRetain();

      v49 = v53;
      sub_1E4203FE4();
      v50 = v56;
      sub_1E3979930();
      OUTLINED_FUNCTION_124();
      sub_1E4206B64();
      _Block_release(v48);
      swift_unknownObjectRelease();
      (*(v58 + 8))(v50, v59);
      (*(v55 + 8))(v49, v57);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FD17C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - v2;
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    sub_1E4206434();

    v10 = sub_1E4206424();
    OUTLINED_FUNCTION_5_10();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v5;
    v13 = OUTLINED_FUNCTION_23_7();
    sub_1E376FE58(v13, v14, v3, v15, v16);
  }

  return result;
}

uint64_t sub_1E3FD18D8()
{
  OUTLINED_FUNCTION_24();
  v0[2] = sub_1E4206434();
  v0[3] = sub_1E4206424();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3FD01A4();
}

uint64_t sub_1E3FD1980()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  sub_1E42063B4();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3FD1AA4()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[5] = sub_1E4206434();
  v0[6] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v4 = sub_1E42063B4();
  v0[7] = v4;
  v0[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E3FD1B38, v4, v3);
}

uint64_t sub_1E3FD1B38()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[4];
  v2 = v0[3];
  v3 = sub_1E4206424();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = sub_1E4205714();
  *v5 = v0;
  v5[1] = sub_1E3FD1C4C;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 2, v3, v7, 0xD000000000000012, 0x80000001E428CB80, sub_1E3FD749C, v4, v6);
}

uint64_t sub_1E3FD1C4C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1E3FD1DC0;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1E3FD1D5C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E3FD1D5C()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E3FD1DC0()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3FD1E30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36000);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_1E3FCD8B0();
    v4 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawPlays;

    v6 = sub_1E3FCC2B4(v5);

    *(v3 + v4) = v6;

    sub_1E3FCDFCC();
    sub_1E3FCCB5C();
    v7 = OUTLINED_FUNCTION_39_3();
    sub_1E379D7E4(v7, v8, v9);
    OUTLINED_FUNCTION_34();
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      return sub_1E325F858(v0, &qword_1ECF36000);
    }

    else
    {
      v10 = *v0;
      v11 = sub_1E42056A4();
      sub_1E4205024();

      sub_1E3FD2000();

      type metadata accessor for SportsRunningClockViewModel();
      OUTLINED_FUNCTION_5_0();

      v12 = v10;
      sub_1E3F833B0(v12);
      sub_1E3FCD37C();
    }
  }

  return result;
}

uint64_t sub_1E3FD2000()
{
  v0 = OUTLINED_FUNCTION_34();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1E4205B94();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_1E3FD2414();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_39_3();
  sub_1E325F858(v9, v10);
  if (*(v8 + 16) != 2)
  {
  }

  v11 = *(v8 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_36_57();
  v12 = sub_1E4200664();
  *v13 = v11;
  *(v13 + 8) = 0;
  v12(v20, 0);

  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = *(v8 + 8 * v14 + 24);
  }

  else
  {
    v15 = 0;
  }

  v17 = v14 == 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v18 = sub_1E4200664();
  *v19 = v15;
  *(v19 + 8) = v17;
  v18(v20, 0);
}

void sub_1E3FD21BC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v5 = type metadata accessor for SportsSeeAllPlayModel();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = 0;
  v12 = *(a3 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v12 == v11)
    {

      return;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = *(v6 + 72);
    sub_1E3FD6FCC(a3 + v13 + v14 * v11, v10);
    v15 = v25(v10);
    if (v3)
    {
      sub_1E3FD7030(v10, type metadata accessor for SportsSeeAllPlayModel);

      return;
    }

    if (v15)
    {
      sub_1E3FD7084(v10, v23);
      v16 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3FD653C(0, *(v16 + 16) + 1, 1);
        v16 = v27;
      }

      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v24 = v19 + 1;
        v22 = v19;
        sub_1E3FD653C(v18 > 1, v19 + 1, 1);
        v20 = v24;
        v19 = v22;
        v16 = v27;
      }

      ++v11;
      *(v16 + 16) = v20;
      v24 = v16;
      sub_1E3FD7084(v23, v16 + v13 + v19 * v14);
    }

    else
    {
      sub_1E3FD7030(v10, type metadata accessor for SportsSeeAllPlayModel);
      ++v11;
    }
  }

  __break(1u);
}

void sub_1E3FD2414()
{
  OUTLINED_FUNCTION_31_1();
  v27 = v0;
  v28 = v4;
  v5 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA10);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_5();
  v11 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_86_19();
  sub_1E379D7E4(v15, v16, v17);
  OUTLINED_FUNCTION_34_4(v2);
  if (v18)
  {
    v19 = v27;
    sub_1E3FCE014();
    sub_1E4205BC4();
    (*(v7 + 8))(v3, v5);
    OUTLINED_FUNCTION_34_4(v2);
    if (!v18)
    {
      sub_1E325F858(v2, &unk_1ECF3DA10);
    }
  }

  else
  {
    (*(v13 + 32))(v1, v2, v11);
    v19 = v27;
  }

  if (!*(*(v19 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_competitors) + 16))
  {
    v30 = 0u;
    v31 = 0u;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_95_19(&type metadata for ViewModelKeys.Sports);
  sub_1E3F9F164(v29);

  __swift_destroy_boxed_opaque_existential_1(v29);
  if (!*(&v31 + 1))
  {
LABEL_14:
    sub_1E325F858(&v30, &unk_1ECF296E0);
    v21 = 0;
    v22 = 0;
    goto LABEL_15;
  }

  v20 = swift_dynamicCast();
  if (v20)
  {
    v21 = v29[0];
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v29[1];
  }

  else
  {
    v22 = 0;
  }

LABEL_15:

  v29[0] = OUTLINED_FUNCTION_33_81(v23);
  sub_1E3FD5A30(v29, v21, v22);

  v25 = v29[0];
  MEMORY[0x1EEE9AC00](v24);
  v26[2] = v1;
  sub_1E3FCFADC(sub_1E3FD6F60, v26, v25);
  OUTLINED_FUNCTION_11_5();

  (*(v13 + 8))(v1, v11);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FD2760()
{
  OUTLINED_FUNCTION_31_1();
  v103 = v3;
  sub_1E4205AF4();
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v102 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAA8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v94 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAB0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v101 = v16 - v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v94 - v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v94 - v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v94 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v94 - v29;
  sub_1E3FD342C();
  if (v31)
  {
    v100 = v2;
    v103 = v0;
    v97 = v31;
    sub_1E3FCC7DC(v31, v30);
    v32 = *MEMORY[0x1E69D3C88];
    v99 = v5;
    v33 = *(v5 + 104);
    v96 = v32;
    v95 = v33;
    v33(v27);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v1);
    v98 = v9;
    v37 = *(v9 + 48);
    OUTLINED_FUNCTION_21_1();
    sub_1E379D7E4(v38, v39, v40);
    sub_1E379D7E4(v27, &v13[v37], &qword_1ECF3DAB0);
    OUTLINED_FUNCTION_21_2(v13);
    if (v47)
    {
      OUTLINED_FUNCTION_68_3();
      sub_1E325F858(v41, v42);
      OUTLINED_FUNCTION_68_3();
      sub_1E325F858(v43, v44);
      OUTLINED_FUNCTION_21_2(&v13[v37]);
      if (v47)
      {
        sub_1E325F858(v13, &qword_1ECF3DAB0);
        v45 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      sub_1E379D7E4(v13, v24, &qword_1ECF3DAB0);
      OUTLINED_FUNCTION_21_2(&v13[v37]);
      if (!v47)
      {
        v50 = v99;
        v51 = v102;
        (*(v99 + 32))(v102, &v13[v37], v1);
        OUTLINED_FUNCTION_28_85();
        sub_1E3FD70F0(v52, v53);
        v45 = sub_1E4205E84();
        v54 = *(v50 + 8);
        v54(v51, v1);
        sub_1E325F858(v27, &qword_1ECF3DAB0);
        OUTLINED_FUNCTION_86_19();
        sub_1E325F858(v55, v56);
        v57 = OUTLINED_FUNCTION_39_3();
        (v54)(v57);
        OUTLINED_FUNCTION_86_19();
        sub_1E325F858(v58, v59);
        goto LABEL_14;
      }

      sub_1E325F858(v27, &qword_1ECF3DAB0);
      sub_1E325F858(v30, &qword_1ECF3DAB0);
      v48 = OUTLINED_FUNCTION_39_3();
      v49(v48);
    }

    sub_1E325F858(v13, &qword_1ECF3DAA8);
    v45 = 0;
LABEL_14:
    v60 = v98;
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = sub_1E4200664();
    *(v62 + 56) = v45 & 1;
    v61(v106, 0);

    v63 = v105;
    sub_1E3FCFC78(v97, v105);

    v64 = v104;
    v95(v104, v96, v1);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v1);
    v68 = *(v60 + 48);
    v69 = v100;
    sub_1E379D7E4(v63, v100, &qword_1ECF3DAB0);
    sub_1E379D7E4(v64, v69 + v68, &qword_1ECF3DAB0);
    OUTLINED_FUNCTION_21_2(v69);
    if (v47)
    {
      OUTLINED_FUNCTION_21_1();
      sub_1E325F858(v70, v71);
      v72 = OUTLINED_FUNCTION_38_0();
      sub_1E325F858(v72, v73);
      OUTLINED_FUNCTION_21_2(v69 + v68);
      if (v47)
      {
        sub_1E325F858(v69, &qword_1ECF3DAB0);
        v74 = 1;
LABEL_23:
        swift_getKeyPath();
        swift_getKeyPath();
        v92 = sub_1E4200664();
        *(v93 + 56) = v74 & 1;
        v92(v106, 0);

        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    else
    {
      v75 = v101;
      sub_1E379D7E4(v69, v101, &qword_1ECF3DAB0);
      OUTLINED_FUNCTION_21_2(v69 + v68);
      if (!v76)
      {
        v81 = v99;
        (*(v99 + 32))(v102, v69 + v68, v1);
        OUTLINED_FUNCTION_28_85();
        sub_1E3FD70F0(v82, v83);
        v74 = sub_1E4205E84();
        v84 = *(v81 + 8);
        v85 = OUTLINED_FUNCTION_39_3();
        v84(v85);
        OUTLINED_FUNCTION_68_3();
        sub_1E325F858(v86, v87);
        OUTLINED_FUNCTION_68_3();
        sub_1E325F858(v88, v89);
        (v84)(v75, v1);
        OUTLINED_FUNCTION_68_3();
        sub_1E325F858(v90, v91);
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_21_1();
      sub_1E325F858(v77, v78);
      v79 = OUTLINED_FUNCTION_38_0();
      sub_1E325F858(v79, v80);
      (*(v99 + 8))(v75, v1);
    }

    sub_1E325F858(v69, &qword_1ECF3DAA8);
    v74 = 0;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_25_2();

  sub_1E3FD2EB0();
}

void sub_1E3FD2EB0()
{
  OUTLINED_FUNCTION_31_1();
  v53 = v3;
  v54 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA10);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - v6;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_8_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v55 = v19;
  v56 = v20;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  sub_1E379D7E4(v53, v18, &qword_1ECF2BD98);
  v24 = sub_1E4205784();
  if (__swift_getEnumTagSinglePayload(v18, 1, v24) != 1)
  {
    v25 = v0;
    v26 = v23;
    sub_1E379D7E4(v18, v15, &qword_1ECF2BD98);
    v27 = *(v24 - 8);
    if ((*(v27 + 88))(v15, v24) == *MEMORY[0x1E69D3BF8])
    {
      v29 = v55;
      v28 = v56;
      v23 = v26;
      (*(v56 + 104))(v26, *MEMORY[0x1E69D3D50], v55);
      goto LABEL_6;
    }

    (*(v27 + 8))(v15, v24);
    v23 = v26;
    v0 = v25;
  }

  sub_1E3FCE014();
  sub_1E4205BC4();
  (*(v9 + 8))(v1, v0);
  v29 = v55;
  v28 = v56;
LABEL_6:
  sub_1E325F858(v18, &qword_1ECF2BD98);
  (*(v28 + 16))(v7, v23, v29);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  sub_1E3FD2414();
  v34 = v33;
  sub_1E325F858(v7, &unk_1ECF3DA10);
  if (*(v34 + 16) == 2)
  {
    v35 = v23;
    if (*(v34 + 32) == *(v34 + 40) || ((v57 = v34, , sub_1E3F9A678(&v57), (v36 = *(v57 + 2)) == 0) ? (v37 = 0) : (v37 = *&v57[8 * v36 + 24]), , !v36))
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1E4200664();
      *(v46 + 56) = 0;
      v47 = OUTLINED_FUNCTION_89_17();
      v48(v47);

      swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_81_25();
      *(v49 + 56) = 0;
      v50 = OUTLINED_FUNCTION_89_17();
      v51(v50);
    }

    else
    {
      v38 = *(v34 + 32) == v37;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1E4200664();
      *(v39 + 56) = v38;
      v28 = v56;
      v40 = OUTLINED_FUNCTION_89_17();
      v41(v40);

      v42 = *(v34 + 40);

      swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_81_25();
      *(v43 + 56) = v42 == v37;
      v44 = OUTLINED_FUNCTION_89_17();
      v45(v44);
    }

    (*(v28 + 8))(v35, v29);
  }

  else
  {
    (*(v28 + 8))(v23, v29);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FD342C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAB0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45[-1] - v5;
  v7 = sub_1E4205AF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45[-1] - v15;
  if (!*(*(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_competitors) + 16))
  {
    v46 = 0u;
    v47 = 0u;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_95_19(&type metadata for ViewModelKeys.Sports);
  sub_1E3F9F164(v45);

  __swift_destroy_boxed_opaque_existential_1(v45);
  if (!*(&v47 + 1))
  {
LABEL_10:
    sub_1E325F858(&v46, &unk_1ECF296E0);
    v18 = 0;
    v19 = 0;
    goto LABEL_11;
  }

  v17 = swift_dynamicCast();
  if (v17)
  {
    v18 = v45[0];
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v45[1];
  }

  else
  {
    v19 = 0;
  }

LABEL_11:

  v45[0] = OUTLINED_FUNCTION_33_81(v20);
  sub_1E3FD5A30(v45, v18, v19);

  v21 = v45[0];
  if (!sub_1E32AE9B0(v45[0]))
  {

    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v7);
    goto LABEL_19;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1E6911E60](0, v21);
    goto LABEL_15;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v21 + 32);
LABEL_15:
    v23 = v22;
    sub_1E4205974();

    OUTLINED_FUNCTION_34_4(v6);
    if (!v24)
    {
      v29 = *(v9 + 32);
      v29(v16, v6, v7);
      v30 = sub_1E37CB21C(v21);

      if (v30)
      {
        sub_1E4205974();

        OUTLINED_FUNCTION_34_4(v1);
        if (!v24)
        {
          v29(v13, v1, v7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DAC0);
          v38 = *(v9 + 72);
          v39 = (*(v9 + 80) + 32) & ~*(v9 + 80);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1E4299720;
          v41 = v40 + v39;
          (*(v9 + 16))(v41, v16, v7);
          v29((v41 + v38), v13, v7);
          v42 = OUTLINED_FUNCTION_38_0();
          v43(v42);
LABEL_27:
          OUTLINED_FUNCTION_25_2();
          return;
        }

        v31 = OUTLINED_FUNCTION_38_0();
        v32(v31);
      }

      else
      {
        v33 = OUTLINED_FUNCTION_38_0();
        v34(v33);
        OUTLINED_FUNCTION_32_2();
        __swift_storeEnumTagSinglePayload(v35, v36, v37, v7);
      }

      v28 = v1;
LABEL_26:
      sub_1E325F858(v28, &qword_1ECF3DAB0);
      goto LABEL_27;
    }

LABEL_19:
    v28 = v6;
    goto LABEL_26;
  }

  __break(1u);

  __break(1u);
}

unint64_t sub_1E3FD3838(uint64_t a1)
{
  v45 = sub_1E4204DD4();
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v35 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E3746CB0(0, v7, 0);
  v8 = v50;
  result = sub_1E3746DC4();
  v12 = 0;
  v13 = a1 + 56;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v7;
  v38 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v13 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v11;
      v47 = result;
      v48 = v10;
      v46 = v12;
      v16 = *(a1 + 48);
      v17 = v8;
      v18 = v42;
      v19 = v43;
      v20 = *(v42 + 16);
      v21 = v45;
      v20(v43, v16 + *(v42 + 72) * result, v45);
      v22 = v44;
      v20(v44, v19, v21);
      v23 = sub_1E3D5C7A0(v22);
      v24 = *(v18 + 8);
      v8 = v17;
      result = v24(v19, v21);
      v50 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1E3746CB0((v25 > 1), v26 + 1, 1);
        v8 = v50;
      }

      *(v8 + 16) = v26 + 1;
      *(v8 + v26 + 32) = v23;
      if (v49)
      {
        goto LABEL_29;
      }

      v13 = v38;
      a1 = v39;
      v27 = 1 << *(v39 + 32);
      result = v47;
      if (v47 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v38 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v48)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v47 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1E3746E04(v47, v48, 0);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_1E3746E04(v47, v48, 0);
      }

LABEL_19:
      v12 = v46 + 1;
      if (v46 + 1 == v37)
      {
        return v8;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      result = v27;
      if (v27 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1E3FD3B84()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FF8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33_5();
  sub_1E4205004();
  v7 = sub_1E4204FF4();
  (*(v5 + 16))(v0, v2, v3);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v0, v3);
  OUTLINED_FUNCTION_13_8();
  sub_1E4204F44();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FD3CD4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4204D64();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36000);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v18 - v10);
  sub_1E379D7E4(v1, &v18 - v10, &qword_1ECF36000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = OUTLINED_FUNCTION_34();
    v13(v12);
    sub_1E3FD70F0(&qword_1ECF3DAD0, MEMORY[0x1E69D3990]);
    v14 = swift_allocError();
    (*(v4 + 16))(v15, v8, v2);
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FF8);
    sub_1E42063C4();
    v16 = OUTLINED_FUNCTION_13_8();
    v17(v16);
  }

  else
  {
    v19 = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FF8);
    sub_1E42063D4();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FD3ED8()
{
  v1 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__plays;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D8D0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__firstPlayID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8E8);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__isLoadingSpinnerHidden;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__totalPlayCount;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39130);
  OUTLINED_FUNCTION_10();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__periodSelectionViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D8F8);
  OUTLINED_FUNCTION_10();
  (*(v10 + 8))(v0 + v9);
  v11 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__leftTeamScoreCard;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D908);
  OUTLINED_FUNCTION_2();
  v14 = *(v13 + 8);
  v14(v0 + v11, v12);
  v14(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rightTeamScoreCard, v12);
  v15 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__clock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D920);
  OUTLINED_FUNCTION_10();
  (*(v16 + 8))(v0 + v15);
  v17 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__baseballClockViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D938);
  OUTLINED_FUNCTION_10();
  (*(v18 + 8))(v0 + v17);
  v19 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__gameStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D948);
  OUTLINED_FUNCTION_10();
  (*(v20 + 8))(v0 + v19);
  v21 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__displayErrors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950);
  OUTLINED_FUNCTION_10();
  (*(v22 + 8))(v0 + v21);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_teamColorProvider);

  v23 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__clockScoreVoiceOverText;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498);
  OUTLINED_FUNCTION_10();
  (*(v24 + 8))(v0 + v23);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1E3FD4264()
{
  sub_1E3FD3ED8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3FD42DC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1E4203FB4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1E3FD4354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_24();
  *(v9 + 112) = v10;
  *(v9 + 120) = a9;
  *(v9 + 73) = v11;
  *(v9 + 96) = v12;
  *(v9 + 104) = v13;
  *(v9 + 88) = v14;
  v15 = sub_1E41FFCB4();
  *(v9 + 128) = v15;
  OUTLINED_FUNCTION_8_0(v15);
  *(v9 + 136) = v16;
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v17);
  *(v9 + 160) = OUTLINED_FUNCTION_86_0();
  v18 = OUTLINED_FUNCTION_11_1();
  return OUTLINED_FUNCTION_96_20(v18, v19, v20);
}

uint64_t sub_1E3FD443C()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 160);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v5 = *(v0 + 73);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    sub_1E4206444();
    sub_1E4206474();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_4_0();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v5;
    *(v13 + 32) = v7;
    *(v13 + 40) = v6;
    *(v13 + 48) = v4;
    *(v13 + 56) = v3;
    swift_unknownObjectRetain();

    v14 = MEMORY[0x1E69E7CA8];
    v15 = OUTLINED_FUNCTION_57();
    v19 = sub_1E3E36FC4(v15, v16, v6, v17, v13, v18);
    *(v0 + 176) = v19;

    sub_1E325F858(v2, &unk_1ECF2C400);
    v20 = swift_task_alloc();
    *(v0 + 184) = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    *v20 = v0;
    v20[1] = sub_1E3FD466C;
    v22 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA20](v0 + 64, v19, v14 + 8, v21, v22);
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v23();
  }
}

uint64_t sub_1E3FD466C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3FD4750()
{
  v25 = v0;
  v1 = *(v0 + 64);
  if (*(v0 + 72) == 1)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v0 + 128);
    v5 = sub_1E3E37F30();
    (*(v3 + 16))(v2, v5, v4);
    v6 = v1;
    v7 = sub_1E41FFC94();
    v8 = sub_1E42067F4();
    sub_1E3A203D0(v1, 1);
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 128);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v23 = v12;
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1E4207AB4();
      v17 = sub_1E3270FC8(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1E323F000, v7, v8, "SportsPlayByPlaySeeAllViewLiveData: failed to refresh event state. error = %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      sub_1E3A203D0(v1, 1);

      (*(v11 + 8))(v10, v23);
    }

    else
    {

      sub_1E3A203D0(v1, 1);

      (*(v11 + 8))(v10, v12);
    }

    OUTLINED_FUNCTION_54();

    return v21();
  }

  else
  {
    sub_1E4206434();
    *(v0 + 192) = sub_1E4206424();
    OUTLINED_FUNCTION_50();
    sub_1E42063B4();
    v18 = OUTLINED_FUNCTION_42_5();

    return MEMORY[0x1EEE6DFA0](v18, v19, v20);
  }
}

uint64_t sub_1E3FD49E4()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 168);

  *(v1 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedAllPlays) = 1;
  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3FD4A54()
{
  OUTLINED_FUNCTION_134();
  sub_1E3E37F30();
  v1 = OUTLINED_FUNCTION_22_34();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v3, v4, "SportsPlayByPlaySeeAllViewLiveData: triggerEventStateRefresh success", v5, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  (*(v0[17] + 8))(v0[19], v0[16]);

  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_1E3FD4B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_24();
  *(v9 + 64) = v10;
  *(v9 + 72) = a9;
  *(v9 + 48) = v11;
  *(v9 + 56) = v12;
  *(v9 + 144) = v13;
  *(v9 + 40) = v14;
  v15 = sub_1E41FFCB4();
  *(v9 + 80) = v15;
  OUTLINED_FUNCTION_8_0(v15);
  *(v9 + 88) = v16;
  *(v9 + 96) = OUTLINED_FUNCTION_86_0();
  v17 = OUTLINED_FUNCTION_11_1();
  return OUTLINED_FUNCTION_96_20(v17, v18, v19);
}

uint64_t sub_1E3FD4C3C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 56);
    if (*(v0 + 144))
    {
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 24);
      *(v0 + 112) = v4;
      if (v4(ObjectType, v2) > 2)
      {
        sub_1E4206434();
        *(v0 + 120) = sub_1E4206424();
        OUTLINED_FUNCTION_50();
        sub_1E42063B4();
        v5 = OUTLINED_FUNCTION_42_5();

        return MEMORY[0x1EEE6DFA0](v5, v6, v7);
      }

      v2 = *(v0 + 56);
    }

    else
    {
      v4 = *(v2 + 24);
    }

    v9 = swift_getObjectType();
    if (v4(v9, v2) >= 1)
    {
      sub_1E3E37F30();
      v10 = OUTLINED_FUNCTION_22_34();
      v11(v10);
      v12 = sub_1E41FFC94();
      v13 = sub_1E42067E4();
      if (os_log_type_enabled(v12, v13))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_3_12(&dword_1E323F000, v14, v15, "SportsPlayByPlaySeeAllViewLiveData: retrying triggerEventStateRefresh");
        OUTLINED_FUNCTION_6_0();
      }

      v16 = OUTLINED_FUNCTION_17_10();
      v17(v16);
    }

    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_23_96(v18);

    return sub_1E3FD5248();
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v8();
  }
}

uint64_t sub_1E3FD4E68()
{
  OUTLINED_FUNCTION_134();

  sub_1E4205004();
  v0 = sub_1E4204FF4();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();

  sub_1E4204F34();

  v1 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3FD4F58()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[14];
  v2 = v0[7];
  ObjectType = swift_getObjectType();
  if (v1(ObjectType, v2) >= 1)
  {
    sub_1E3E37F30();
    v4 = OUTLINED_FUNCTION_22_34();
    v5(v4);
    v6 = sub_1E41FFC94();
    v7 = sub_1E42067E4();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_12(&dword_1E323F000, v8, v9, "SportsPlayByPlaySeeAllViewLiveData: retrying triggerEventStateRefresh");
      OUTLINED_FUNCTION_6_0();
    }

    v10 = OUTLINED_FUNCTION_17_10();
    v11(v10);
  }

  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_23_96(v12);

  return sub_1E3FD5248();
}

uint64_t sub_1E3FD5080()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    v7 = sub_1E3FD51E4;
  }

  else
  {
    v7 = sub_1E3FD5180;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3FD5180()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3FD51E4()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3FD5248()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = sub_1E4206434();
  v0[5] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v4 = sub_1E42063B4();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E3FD52DC, v4, v3);
}

uint64_t sub_1E3FD52DC()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[3];
  v2 = v0[2];
  v3 = sub_1E4206424();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1E3FD53E8;
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v3, v6, 0xD000000000000017, 0x80000001E428CB60, sub_1E3FD70E8, v4, v7);
}

uint64_t sub_1E3FD53E8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1E3FD5554;
  }

  else
  {

    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1E3FD54F8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E3FD54F8()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3FD5554()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3FD55C4()
{
  OUTLINED_FUNCTION_31_1();
  v15 = v2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_93_2();
  v6 = sub_1E4204F04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_5();
  sub_1E4205004();
  v13 = sub_1E4204FF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA48);
  *(swift_allocObject() + 16) = xmmword_1E4297BE0;
  sub_1E4204EF4();
  sub_1E3FD70F0(&qword_1ECF3DA50, MEMORY[0x1E69D39F8]);
  v8 = OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_47();
  sub_1E3A1558C(v9, v10);
  sub_1E42072E4();
  (*(v4 + 16))(v1, v15, v14);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v1, v14);
  sub_1E4204FD4();

  (*(v7 + 8))(v0, v6);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FD5880(uint64_t result, void (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1E3FD58E0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for SportsSeeAllPlayModel(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for SportsSeeAllPlayModel();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E3FD59B4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E34AF5E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E3FD5AE4(v6);
  return sub_1E4207554();
}

uint64_t sub_1E3FD5A30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1E34AF5E0(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;

  sub_1E3FD5BD8(v10, a2, a3);
  sub_1E4207554();
  return swift_bridgeObjectRelease_n();
}

void sub_1E3FD5AE4(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1E4207914();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1E3FD5880(v3 / 2, MEMORY[0x1E69D3A58]);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1E37FF3F8(v8, v9, a1, v5);
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
    sub_1E37FEC80(0, v3, 1, a1);
  }
}

uint64_t sub_1E3FD5BD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1E4207914();
  if (result < v7)
  {
    v9 = result;
    v10 = sub_1E3FD5880(v7 / 2, MEMORY[0x1E69D3C38]);
    v12[0] = v11;
    v12[1] = (v7 / 2);

    result = sub_1E3FD5D24(v12, &v13, a1, v9, a2, a3);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    sub_1E3F9A910(0, v7, 1, a1, a2, a3);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E3FD5D24(void ***a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v131 = a1;
  v142 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    OUTLINED_FUNCTION_44_2();
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x1E69E7CC0];
LABEL_118:
    v137 = *v131;
    if (!*v131)
    {
      goto LABEL_161;
    }

    OUTLINED_FUNCTION_44_2();
    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_120:
      v113 = (v9 + 16);
      v114 = *(v9 + 2);
      for (i = v9; ; v9 = i)
      {
        if (v114 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        if (!*v142)
        {
          goto LABEL_158;
        }

        v115 = &v9[16 * v114];
        v116 = *v115;
        v9 = v113;
        v117 = &v113[2 * v114];
        v118 = v117[1];
        v119 = *v142 + 8 * *v115;

        OUTLINED_FUNCTION_56_39(v120, v121, v122, v123, v124, v125, v126, v127, v129, v130, v131, v132, v133, i, v136, v137, v114, v142, v143);
        v143 = v119;
        if (v119)
        {
          break;
        }

        if (v118 < v116)
        {
          goto LABEL_146;
        }

        if (v114 - 2 >= *v113)
        {
          goto LABEL_147;
        }

        *v115 = v116;
        *(v115 + 1) = v118;
        if (*v113 < v141)
        {
          goto LABEL_148;
        }

        v114 = *v113 - 1;
        memmove(v117, v117 + 2, 16 * (*v113 - v141));
        *v113 = v114;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_155:
    v9 = sub_1E37FFF5C(v9);
    goto LABEL_120;
  }

  v130 = a4;
  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v144 = a6;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v134 = v9;
      v12 = *v142;
      v13 = a6;
      v14 = v8 + 1;
      v132 = v8;
      v15 = *(*v142 + 8 * v8);
      v9 = *(*v142 + 8 * v11);
      v16 = v15;
      v17 = sub_1E4205964();
      v18 = sub_1E42054D4();
      v20 = v19;

      if (v13)
      {
        if (v18 == a5 && v20 == v13)
        {
          v138 = 1;
        }

        else
        {
          v138 = sub_1E42079A4();
        }
      }

      else
      {
        v138 = 0;
      }

      v11 = v14;

      v22 = (v12 + 8 * v132 + 16);
      v136 = 8 * v132;
      v137 = v7;
      for (j = 8 * v132 + 8; ; j += 8)
      {
        v24 = v11++;
        if (v11 >= v7)
        {
          break;
        }

        v25 = *(v22 - 1);
        v26 = *v22;
        v9 = v25;
        v27 = sub_1E4205964();
        v28 = sub_1E42054D4();
        v30 = v29;

        if (v144)
        {
          if (v28 == a5 && v30 == v144)
          {

            v7 = v137;
            if ((v138 & 1) == 0)
            {
              v11 = v24 + 1;
              goto LABEL_36;
            }
          }

          else
          {
            v32 = sub_1E42079A4() & 1;

            v7 = v137;
            if ((v138 & 1) != v32)
            {
              break;
            }
          }
        }

        else
        {

          v7 = v137;
          if (v138)
          {
            goto LABEL_26;
          }
        }

        ++v22;
      }

      if ((v138 & 1) == 0)
      {
LABEL_36:
        v9 = v134;
        a6 = v144;
        goto LABEL_37;
      }

LABEL_26:
      v11 = v24 + 1;
      v33 = v132;
      if (v24 + 1 < v132)
      {
        goto LABEL_152;
      }

      if (v132 >= v11)
      {
        v9 = v134;
        a6 = v144;
        v10 = v132;
        goto LABEL_38;
      }

      v34 = v24;
      v9 = v134;
      v35 = 8 * v132;
      a6 = v144;
      do
      {
        if (v33 != v34)
        {
          v36 = *v142;
          if (!*v142)
          {
            goto LABEL_159;
          }

          v37 = *(v36 + v35);
          *(v36 + v35) = *(v36 + j);
          *(v36 + j) = v37;
        }

        ++v33;
        j -= 8;
        v35 += 8;
      }

      while (v33 < v34--);
LABEL_37:
      v10 = v132;
    }

LABEL_38:
    v39 = v142[1];
    if (v11 < v39)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_151;
      }

      if (v11 - v10 < v130)
      {
        break;
      }
    }

LABEL_64:
    if (v11 < v10)
    {
      goto LABEL_150;
    }

    v140 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = OUTLINED_FUNCTION_27();
      v9 = sub_1E37FFF70(v110, v111, v112, v9);
    }

    v59 = *(v9 + 2);
    v58 = *(v9 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v9 = sub_1E37FFF70((v58 > 1), v59 + 1, 1, v9);
    }

    *(v9 + 2) = v60;
    v61 = v9 + 32;
    v62 = &v9[16 * v59 + 32];
    *v62 = v10;
    *(v62 + 1) = v140;
    v137 = *v131;
    if (!*v131)
    {
      goto LABEL_160;
    }

    if (v59)
    {
      v136 = (v9 + 32);
      while (1)
      {
        v63 = v60 - 1;
        v64 = &v61[16 * v60 - 16];
        v65 = &v9[16 * v60];
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_85:
          if (v69)
          {
            goto LABEL_137;
          }

          v81 = *v65;
          v80 = *(v65 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_140;
          }

          v85 = *(v64 + 1);
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_143;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_145;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v60 < 2)
        {
          goto LABEL_139;
        }

        v88 = *v65;
        v87 = *(v65 + 1);
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_100:
        if (v84)
        {
          goto LABEL_142;
        }

        v90 = *v64;
        v89 = *(v64 + 1);
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_144;
        }

        if (v91 < v83)
        {
          goto LABEL_114;
        }

LABEL_107:
        if (v63 - 1 >= v60)
        {
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
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (!*v142)
        {
          goto LABEL_157;
        }

        v95 = &v61[16 * v63 - 16];
        v96 = *v95;
        v97 = v63;
        v98 = &v61[16 * v63];
        v99 = *(v98 + 1);
        v100 = *v142 + 8 * *v95;

        OUTLINED_FUNCTION_56_39(v101, v102, v103, v104, v105, v106, v107, v108, v129, v130, v131, v132, v133, v134, v136, v137, v140, v142, v143);
        v143 = v100;
        if (v100)
        {
          OUTLINED_FUNCTION_44_2();
          swift_bridgeObjectRelease_n();
        }

        if (v99 < v96)
        {
          goto LABEL_132;
        }

        v109 = *(v9 + 2);
        if (v97 > v109)
        {
          goto LABEL_133;
        }

        *v95 = v96;
        *(v95 + 1) = v99;
        if (v97 >= v109)
        {
          goto LABEL_134;
        }

        v60 = v109 - 1;
        memmove(v98, v98 + 16, 16 * (v109 - 1 - v97));
        *(v9 + 2) = v109 - 1;
        v61 = v136;
        a6 = v144;
        if (v109 <= 2)
        {
          goto LABEL_114;
        }
      }

      v70 = &v61[16 * v60];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_135;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_136;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_138;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_141;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_149;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_114:
    v8 = v140;
    v7 = v142[1];
    if (v140 >= v7)
    {
      goto LABEL_118;
    }
  }

  if (__OFADD__(v10, v130))
  {
    goto LABEL_153;
  }

  if (v10 + v130 >= v39)
  {
    v40 = v142[1];
  }

  else
  {
    v40 = v10 + v130;
  }

  if (v40 < v10)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v11 == v40)
  {
    goto LABEL_64;
  }

  v133 = v40;
  v134 = v9;
  v41 = v11;
  v42 = *v142;
  v43 = *v142 + 8 * v41 - 8;
  v132 = v10;
  v44 = v10 - v41;
LABEL_48:
  v137 = v43;
  v139 = v41;
  v45 = *(v42 + 8 * v41);
  v136 = v44;
  v46 = v43;
  while (1)
  {
    v47 = *v46;
    v48 = v45;
    v49 = v47;
    v50 = sub_1E4205964();
    v51 = sub_1E42054D4();
    v53 = v52;

    if (!a6)
    {

LABEL_62:
      v41 = v139 + 1;
      v43 = (v137 + 1);
      v44 = v136 - 1;
      if (v139 + 1 == v133)
      {
        v11 = v133;
        v9 = v134;
        v10 = v132;
        goto LABEL_64;
      }

      goto LABEL_48;
    }

    if (v51 == a5 && v53 == a6)
    {
    }

    else
    {
      v55 = sub_1E42079A4();

      if ((v55 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if (!v42)
    {
      break;
    }

    v56 = *v46;
    v45 = *(v46 + 8);
    *v46 = v45;
    *(v46 + 8) = v56;
    v46 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_62;
    }
  }

  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_158:

  __break(1u);
LABEL_159:
  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  OUTLINED_FUNCTION_44_2();
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

size_t sub_1E3FD653C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E3FD655C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E3FD655C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA38);
  v10 = *(type metadata accessor for SportsSeeAllPlayModel() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SportsSeeAllPlayModel() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1E3FD58E0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1E3FD6710(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v6 = sub_1E4207384();
    if (v6)
    {
      v7 = v6;
      v3 = sub_1E37FEA14(v6, 0);
      a2(v3 + 4, v7, a1);
      v9 = v8;

      if (v9 == v7)
      {
        return v3;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1E3FD67AC()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3FD011C();
}

uint64_t sub_1E3FD6834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_134();
  v10 = *(v9 + 40);
  v11 = *(v9 + 48);
  v12 = *(v9 + 56);
  v13 = *(v9 + 64);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_30_0(v14);
  *v15 = v16;
  v17 = OUTLINED_FUNCTION_94_22(v15);

  return sub_1E3FD4354(v17, v18, v19, v20, v10, v11, v12, v13, a9);
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E3FD6904(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 58))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1E3FD6958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for SportsPlayByPlaySeeAllViewLiveData()
{
  result = qword_1ECF6A5C0;
  if (!qword_1ECF6A5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FD6A20()
{
  sub_1E3928D10(319, &qword_1ECF3D968, &qword_1ECF3D8C8);
  if (v0 <= 0x3F)
  {
    sub_1E3928D10(319, &qword_1ECF3D970, &qword_1ECF3D8E0);
    if (v1 <= 0x3F)
    {
      sub_1E3F9A4BC(319, &qword_1EE289F50);
      if (v2 <= 0x3F)
      {
        sub_1E3F9A4BC(319, &qword_1EE289F40);
        if (v3 <= 0x3F)
        {
          sub_1E3FD6E54(319, &qword_1ECF3D978, type metadata accessor for SportsPeriodSelectionViewModel);
          if (v4 <= 0x3F)
          {
            sub_1E3F9A4BC(319, &qword_1ECF3D980);
            if (v5 <= 0x3F)
            {
              sub_1E3928D10(319, &qword_1ECF3D988, &qword_1ECF3D918);
              if (v6 <= 0x3F)
              {
                sub_1E3928D10(319, &qword_1ECF3D990, &qword_1ECF3D930);
                if (v7 <= 0x3F)
                {
                  sub_1E3FD6E54(319, &unk_1ECF3D998, MEMORY[0x1E69D3BB8]);
                  if (v8 <= 0x3F)
                  {
                    sub_1E3928D10(319, &qword_1EE289F80, &qword_1ECF2B4C0);
                    if (v9 <= 0x3F)
                    {
                      sub_1E3928D10(319, &qword_1EE289FA8, &qword_1ECF3D960);
                      if (v10 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
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

void sub_1E3FD6E54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_20_2();
    v4 = sub_1E4200694();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E3FD6EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_134();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  v12 = *(v9 + 40);
  v13 = *(v9 + 48);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_30_0(v14);
  *v15 = v16;
  v17 = OUTLINED_FUNCTION_94_22(v15);

  return sub_1E3FD4B94(v17, v18, v19, v20, v10, v11, v12, v13, a9);
}

void sub_1E3FD6F60(uint64_t a1@<X8>)
{
  v2 = sub_1E4205984();
  if (v2)
  {
    v3 = sub_1E4205AE4();
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 == 0;
}

uint64_t sub_1E3FD6FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSeeAllPlayModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FD7030(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3FD7084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSeeAllPlayModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FD70F0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3FD7134()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_32_0();
    sub_1E3FD1064();
  }

  return result;
}

uint64_t sub_1E3FD71A4()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__cancellables;
    swift_beginAccess();
    *(v1 + v2) = MEMORY[0x1E69E7CD0];

    sub_1E3FE3F18();
    if (*(v1 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_refreshEventStateTimer))
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_11_5();
      swift_unknownObjectRetain();
      sub_1E4206B74();
      swift_unknownObjectRelease();
    }

    *(v1 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedFromBackground) = 0;
  }

  return result;
}

uint64_t objectdestroyTm_56(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));
  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E3FD72C4()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3FD18D8();
}

uint64_t sub_1E3FD734C(void **a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = v3;
    sub_1E3FCDF54(v3);
    if (v2)
    {
      v7 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedFromBackground;
      if ((*(v5 + OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData_hasFetchedFromBackground) & 1) == 0)
      {

        sub_1E3FD1064();

        *(v5 + v7) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_1E3FD7408()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1E3FCCB5C();
    v2 = OBJC_IVAR____TtC8VideosUI34SportsPlayByPlaySeeAllViewLiveData__rawPlays;

    v4 = sub_1E3FCC2B4(v3);

    *(v1 + v2) = v4;

    sub_1E3FCDFCC();
  }

  return result;
}

void sub_1E3FD74A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FF8);
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3FD3CD4();
}

uint64_t OUTLINED_FUNCTION_56_39(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v25 = *(v23 - 72);

  return sub_1E3F9B908(v20, v21, v22, a16, v25, v19);
}

uint64_t OUTLINED_FUNCTION_79_26()
{

  return sub_1E4200664();
}

uint64_t OUTLINED_FUNCTION_94_22(uint64_t result)
{
  *(result + 8) = v1;
  *(v3 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_95_19@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = v1;
  *(v2 - 152) = 7;
}

uint64_t OUTLINED_FUNCTION_96_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

id sub_1E3FD7610()
{
  OUTLINED_FUNCTION_0_8();
  v21 = type metadata accessor for MultiPlayerContainerGradientView();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v21);
  v5 = sub_1E39600A8();
  if (v5)
  {
    v6 = v5;
    [v4 bounds];
    [v6 setFrame_];
    [v6 setType_];
    [v6 setStartPoint_];
    [v6 setEndPoint_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1E4299720;
    v8 = objc_opt_self();
    v9 = [v8 blackColor];
    v10 = [v9 colorWithAlphaComponent_];

    v11 = [v10 CGColor];
    type metadata accessor for CGColor();
    v13 = v12;
    *(v7 + 56) = v12;
    *(v7 + 32) = v11;
    v14 = [v8 blackColor];
    v15 = [v14 colorWithAlphaComponent_];

    v16 = [v15 CGColor];
    *(v7 + 88) = v13;
    *(v7 + 64) = v16;
    v17 = OUTLINED_FUNCTION_13_8();
    sub_1E38E2BE0(v17, v18);
    LODWORD(v19) = 0.5;
    [v6 setOpacity_];
  }

  return v4;
}

uint64_t sub_1E3FD7858(void *a1)
{
  type metadata accessor for MultiPlayerContainerGradientView();

  return swift_deallocPartialClassInstance();
}

void sub_1E3FD78C0(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MultiPlayerContainerGradientView();
  objc_msgSendSuper2(&v5, sel_layoutSublayersOfLayer_, a1);
  v3 = sub_1E39600A8();
  if (v3)
  {
    v4 = v3;
    [v1 bounds];
    [v4 setFrame_];
  }
}

id sub_1E3FD7990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPlayerContainerGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3FD79C4()
{
  OUTLINED_FUNCTION_71_4();
  swift_allocObject();
  return sub_1E3FD79F4();
}

uint64_t sub_1E3FD79F4()
{
  type metadata accessor for ImageLayout();
  *(v0 + 104) = sub_1E3BD61D8();
  v1 = sub_1E3C2F9A0();

  sub_1E3FD7A48();

  return v1;
}

void sub_1E3FD7A48()
{
  (*(*v0 + 1280))(0, 0);
  v1 = objc_opt_self();
  v2 = [v1 vui:14 fontFromTextStyle:10 fontWeight:2 fontSize:0 fontWidth:36.0 symbolicTraits:?];
  if (!v2)
  {
    v2 = [v1 systemFontOfSize_];
  }

  v3 = objc_opt_self();
  v4 = [v3 configurationWithPointSize:5 weight:3 scale:36.0];
  v5 = [v3 configurationPreferringMonochrome];
  v6 = [v4 configurationByApplyingConfiguration_];

  v7 = v0[13];
  v8 = *(*v7 + 1952);
  v9 = v6;
  v8(v6);
  OUTLINED_FUNCTION_31_82();
  v10 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_20_120();
  OUTLINED_FUNCTION_19_143();
  OUTLINED_FUNCTION_18_133();
  *&v22 = v25;
  BYTE8(v22) = BYTE8(v25);
  OUTLINED_FUNCTION_3_237();
  memcpy(v21, __src, 0x59uLL);
  v11 = OUTLINED_FUNCTION_18();
  v12 = *(*v7 + 1600);
  v12(v21, 2, v11 & 1, v10);
  OUTLINED_FUNCTION_31_82();
  sub_1E3C3DE00(v10);
  OUTLINED_FUNCTION_20_120();
  OUTLINED_FUNCTION_19_143();
  OUTLINED_FUNCTION_18_133();
  *&v22 = v25;
  BYTE8(v22) = BYTE8(v25);
  OUTLINED_FUNCTION_3_237();
  memcpy(v21, __src, 0x59uLL);
  v13 = OUTLINED_FUNCTION_18();
  v14 = v12(v21, 6, v13 & 1, v10);
  v14.n128_u64[0] = 12.0;
  v21[0] = j__OUTLINED_FUNCTION_7_78(v14);
  v21[1] = v15;
  v21[2] = v16;
  v21[3] = v17;
  LOBYTE(v21[4]) = 0;
  v46 = xmmword_1E42D1200;
  v47 = xmmword_1E42E3AD0;
  v48 = 0;
  type metadata accessor for UIEdgeInsets();
  v19 = v18;
  sub_1E3C3DE00(v18);
  v40 = v43;
  v41 = v44;
  v42 = v45;
  sub_1E3C2FC98();
  v34 = v37;
  v35 = v38;
  v36 = v39;
  sub_1E3C3DE00(v19);
  v28 = v31;
  v29 = v32;
  v30 = v33;
  sub_1E3C3DE00(v19);
  v22 = v25;
  v23 = v26;
  v24 = v27;
  OUTLINED_FUNCTION_3_237();
  memcpy(v21, __src, 0xE9uLL);
  v20 = OUTLINED_FUNCTION_18();
  v12(v21, 1, v20 & 1, v19);
}

uint64_t sub_1E3FD7DD4()
{
  sub_1E3C36C6C();

  OUTLINED_FUNCTION_71_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1E3FD7E18()
{
  v2 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView);
  }

  else
  {
    v5 = v0;
    OUTLINED_FUNCTION_15_1();
    swift_allocObject();
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_15_1();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E40656C8(sub_1E3FDC1E0, v1, sub_1E3FDC2B8, v6, v12);
    v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB28));
    v8 = sub_1E4201214();
    v9 = *(v5 + v2);
    *(v5 + v2) = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

id sub_1E3FD7F08()
{
  v1 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeGradient;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeGradient);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeGradient);
  }

  else
  {
    type metadata accessor for MultiPlayerContainerGradientView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E3FD7FA0()
{
  v1 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    sub_1E3280A90(0, &qword_1EE23AE00);
    v6 = sub_1E3834BC8();
    [v5 setImage_];

    [v5 setContentMode_];
    v7 = [objc_opt_self() whiteColor];
    [v5 setTintColor_];

    v8 = *(**(*(v4 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_layout) + 104) + 1944);

    v10 = v8(v9);

    [v5 setSymbolConfiguration_];

    v11 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_1E3FD813C()
{
  v1 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___dimmingView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___dimmingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___dimmingView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [objc_opt_self() blackColor];
    v6 = [v5 colorWithAlphaComponent_];

    [v4 setBackgroundColor_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1E3FD8230()
{
  v1 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isDimmed;
  OUTLINED_FUNCTION_15_0();
  sub_1E3FDBB50((*(v0 + v1) & 1) == 0);
}

uint64_t sub_1E3FD8274()
{
  v1 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isDimmed;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

void sub_1E3FD82AC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isDimmed;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  sub_1E3FD8230();
}

uint64_t sub_1E3FD82F0(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E3FD8340(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3FD8230();
  }
}

uint64_t sub_1E3FD8374()
{
  v1 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isPlayerInset;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

uint64_t sub_1E3FD83AC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isPlayerInset;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

double sub_1E3FD83EC()
{
  [v0 bounds];
  v13 = v1;
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = j__OUTLINED_FUNCTION_1_248();
  v11.f64[0] = v7;
  sub_1E40BF0E0(v10, v3, v5, v11, v9);
  return v13;
}

double sub_1E3FD8490()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 60.0;
  }

  IsSwitchControlRunning = UIAccessibilityIsSwitchControlRunning();
  result = 60.0;
  if (!IsSwitchControlRunning)
  {
    return 5.0;
  }

  return result;
}

uint64_t sub_1E3FD8608(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  OUTLINED_FUNCTION_5_0();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1E3FD8688(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_1E3FD8738()
{
  v1 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_playerViewController;
  OUTLINED_FUNCTION_15_0();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E3FD8780(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_playerViewController;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1E3FD87C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = OUTLINED_FUNCTION_74();
  return sub_1E3FD8810(v6, v7, a3);
}

void *sub_1E3FD8810(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_controlFadeTimer] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeGradient] = 0;
  v8 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_layout;
  type metadata accessor for MultiPlayerContainerViewLayout();
  OUTLINED_FUNCTION_71_4();
  swift_allocObject();
  *&v3[v8] = sub_1E3FD79F4();
  *&v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___dimmingView] = 0;
  v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isDimmed] = 0;
  v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isPlayerInset] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView] = 0;
  v9 = &v3[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_onSelect];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_closeHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_fullscreenHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_volumeObserver] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_statusObserver] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isReadyForDisplayObserver] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___singlePressGesture] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___hoverGestureRecognizer] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_playerViewController] = a1;
  swift_beginAccess();
  *v9 = a2;
  *(v9 + 1) = a3;
  v12 = a1;
  v13 = OUTLINED_FUNCTION_13_8();
  sub_1E34AF604(v13);
  v26.receiver = v4;
  v26.super_class = type metadata accessor for MultiPlayerContainerView();
  v14 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = sub_1E3FD922C();
  [v14 addGestureRecognizer_];

  v16 = sub_1E3FD9248();
  [v14 addGestureRecognizer_];

  v17 = sub_1E3FD7F08();
  [v17 setHidden_];

  v18 = sub_1E3FD7FA0();
  [v18 setHidden_];

  v19 = MEMORY[0x1E69E7D40];
  v20 = (*((*MEMORY[0x1E69E7D40] & *v14) + 0x2B0))();
  v21 = (*((*v19 & *v14) + 0x128))(v20);
  [v21 addSubview_];

  sub_1E3FD8D14();
  sub_1E3FD9440();
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  sub_1E3839D34(v22, v23, v14);

  v24 = OUTLINED_FUNCTION_13_8();
  sub_1E34AF594(v24);

  return v14;
}

id sub_1E3FD8B2C()
{
  if (*&v0[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_volumeObserver])
  {

    sub_1E42004E4();
  }

  if (*&v0[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_statusObserver])
  {

    sub_1E42004E4();
  }

  if (*&v0[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isReadyForDisplayObserver])
  {

    sub_1E42004E4();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPlayerContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3FD8D14()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  v2 += 37;
  v3 = *v2;
  v4 = (*v2)();
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = [v6 colorWithAlphaComponent_];

  [v4 setBackgroundColor_];
  v8 = v3();
  v9 = [v8 layer];

  [v9 setBorderWidth_];
  v10 = v3();
  v11 = [v10 layer];

  v12 = [v5 whiteColor];
  v13 = [v12 colorWithAlphaComponent_];

  v14 = [v13 CGColor];
  [v11 setBorderColor_];

  v15 = v3();
  v16 = OUTLINED_FUNCTION_37_75(v15);

  v17 = [v5 blackColor];
  v18 = [v17 CGColor];

  [v16 setShadowColor_];
  v19 = v3();
  v20 = OUTLINED_FUNCTION_37_75(v19);

  [v20 setShadowOffset_];
  v21 = v3();
  v22 = OUTLINED_FUNCTION_37_75(v21);

  [v22 setShadowRadius_];
  v23 = v3();
  v24 = OUTLINED_FUNCTION_37_75(v23);

  LODWORD(v25) = 1045220557;
  [v24 setShadowOpacity_];

  v26 = sub_1E3FD7E18();
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  v27 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView;
  [*(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView) setHidden_];
  [*(v1 + v27) setAlpha_];
  v28 = *(v1 + v27);
  [v28 frame];
  [v28 setFrame_];

  v29 = v3();
  [v29 addSubview_];

  v30 = sub_1E3FD7FA0();
  [v30 setHidden_];

  v31 = sub_1E3FD922C();
  [v31 setDelegate_];

  v32 = sub_1E3FD7F08();
  [v32 setHidden_];

  v33 = v3();
  [v33 addSubview_];

  v34 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2B0))();
  v35 = (v3)(v34);
  [v35 addSubview_];

  v36 = v3();
  sub_1E3280A90(0, &qword_1EE23AE20);
  v37 = sub_1E4206F24();
  [v36 setBackgroundColor_];

  sub_1E3FD9440();
}

id sub_1E3FD9264(uint64_t *a1, uint64_t *a2, Class *a3)
{
  v4 = *a1;
  v5 = *&v3[*a1];
  if (v5)
  {
    v6 = *&v3[*a1];
  }

  else
  {
    v9 = v3;
    v16[3] = type metadata accessor for MultiPlayerContainerView();
    v16[0] = v3;
    v10 = *a2;
    objc_allocWithZone(*a3);
    v11 = v9;
    v12 = sub_1E3FDBEB4(v16, v10);
    v13 = *&v9[v4];
    *&v9[v4] = v12;
    v6 = v12;

    v5 = 0;
  }

  v14 = v5;
  return v6;
}

char *sub_1E3FD9308(void *a1)
{
  result = [a1 state];
  if ((result - 2) <= 2)
  {
    v3 = 6u >> ((result - 2) & 7);
    type metadata accessor for MultiPlayerContainerView();
    v4 = sub_1E3FD8490();
    v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2A8);

    return v5(v3 & 1, 1, *&v4, 0);
  }

  return result;
}

void sub_1E3FD9440()
{
  v1 = v0;
  v69[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB58);
  OUTLINED_FUNCTION_0_10();
  v69[1] = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v69[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB60);
  OUTLINED_FUNCTION_0_10();
  v71 = v6;
  v72 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v70 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB68);
  OUTLINED_FUNCTION_0_10();
  v87 = v9;
  v88 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v84 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v77 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB78);
  OUTLINED_FUNCTION_0_10();
  v78 = v15;
  v79 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v69 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB80);
  OUTLINED_FUNCTION_0_10();
  v80 = v20;
  v81 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v75 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB88);
  OUTLINED_FUNCTION_0_10();
  v85 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v69 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DB90);
  OUTLINED_FUNCTION_0_10();
  v82 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v69 - v32;
  OUTLINED_FUNCTION_26_3();
  v35 = *((*MEMORY[0x1E69E7D40] & v34) + 0x1F8);
  v36 = v35();
  v76 = v35;
  v37 = v36;
  swift_getKeyPath();
  sub_1E41FE2F4();

  v39 = (v35)(v38);
  swift_getKeyPath();
  sub_1E41FE2F4();

  sub_1E32752B0(&qword_1ECF3DB98, &qword_1ECF3DB90);
  sub_1E32752B0(&unk_1ECF3DBA0, &qword_1ECF3DB88);
  v83 = v28;
  v73 = v33;
  v74 = v29;
  v86 = v24;
  sub_1E4200714();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v40 = sub_1E4206A04();
  v89 = v40;
  v41 = sub_1E42069A4();
  v42 = v77;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v41);
  sub_1E32752B0(&unk_1ECF3DBB0, &qword_1ECF3DB78);
  sub_1E3746800();
  v43 = v78;
  sub_1E42007D4();
  sub_1E325F748(v42, &unk_1ECF2D2B0);

  (*(v79 + 8))(v19, v43);
  OUTLINED_FUNCTION_4_0();
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1E3FDC43C;
  *(v45 + 24) = v44;
  sub_1E32752B0(&qword_1ECF3DBC0, &qword_1ECF3DB80);
  v46 = sub_1E4200844();

  v47 = OUTLINED_FUNCTION_171_0();
  v48(v47);
  *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_volumeObserver) = v46;

  v50 = v76;
  v51 = (v76)(v49);
  swift_getKeyPath();
  sub_1E41FE2F4();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_19_6();
  sub_1E32752B0(&qword_1ECF3DBC8, &unk_1ECF3DB68);
  v52 = sub_1E4200844();

  v53 = OUTLINED_FUNCTION_171_0();
  v54(v53);
  *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_statusObserver) = v52;

  v56 = (v50)(v55);
  LOBYTE(v19) = [v56 isReadyForDisplay];

  if (v19)
  {
    (*(v85 + 8))(v83, v86);
    (*(v82 + 8))(v73, v74);
  }

  else
  {
    v57 = v82;
    v58 = v83;
    v60 = v85;
    v59 = v86;
    v61 = v50();
    v62 = [v61 view];

    if (v62)
    {
      [v62 setAlpha_];

      v63 = v50();
      swift_getKeyPath();
      sub_1E41FE2F4();

      sub_1E32752B0(&qword_1ECF3DBD0, &qword_1ECF3DB58);
      v64 = v70;
      sub_1E4200794();
      v65 = OUTLINED_FUNCTION_74();
      v66(v65);
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_19_6();
      sub_1E32752B0(&unk_1ECF3DBD8, &qword_1ECF3DB60);
      v67 = v72;
      v68 = sub_1E4200844();

      (*(v71 + 8))(v64, v67);
      (*(v60 + 8))(v58, v59);
      (*(v57 + 8))(v73, v74);
      *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isReadyForDisplayObserver) = v68;
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1E3FD9E08@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 volume];
  *a2 = v4;
  return result;
}

id sub_1E3FD9E9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeControlStatus];
  *a2 = result;
  return result;
}

id sub_1E3FD9ED0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isReadyForDisplay];
  *a2 = result;
  return result;
}

void sub_1E3FD9F04(char a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (*&v4[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_controlFadeTimer])
  {

    sub_1E42004E4();
  }

  OUTLINED_FUNCTION_15_1();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1 & 1;
  OUTLINED_FUNCTION_15_1();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1 & 1;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4 & 1;

  if ((a1 & 1) == 0)
  {
    v13 = sub_1E3FD7E18();
    [v13 setHidden_];
  }

  v14 = sub_1E3FD7E18();
  [v5 bringSubviewToFront_];

  if (a2)
  {

    v15 = objc_opt_self();
    OUTLINED_FUNCTION_2_4();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1E3FDBFF0;
    *(v16 + 24) = v10;
    v25 = sub_1E3FDC010;
    v26 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1E378AEA4;
    v24 = &block_descriptor_151;
    v17 = _Block_copy(&aBlock);

    OUTLINED_FUNCTION_2_4();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1E3FDBFFC;
    *(v18 + 24) = v12;
    v25 = sub_1E379E500;
    v26 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1E37EB82C;
    v24 = &block_descriptor_17_3;
    v19 = _Block_copy(&aBlock);

    [v15 animateWithDuration:v17 animations:v19 completion:0.25];

    _Block_release(v19);
    _Block_release(v17);
  }

  else
  {
    sub_1E3FDA264(v9, a1 & 1);

    sub_1E3FDA2E8(v11, a1 & 1, a3, a4 & 1);
  }
}

BOOL sub_1E3FDA264(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = sub_1E3FD7E18();

    v5 = 1.0;
    if (a2)
    {
      v5 = 0.0;
    }

    [v4 setAlpha_];
  }

  return Strong == 0;
}

void sub_1E3FDA2E8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADC0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_1E3FD7E18();
    [v12 setHidden_];

    v13 = *MEMORY[0x1E69DD8E8];
    if (a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = *&v11[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView];
    }

    UIAccessibilityPostNotification(v13, v14);

    if (a4)
    {
    }

    else
    {
      sub_1E3280A90(0, &qword_1EE23AE40);
      v15 = [objc_opt_self() mainRunLoop];
      v16 = sub_1E4207054();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
      v17 = sub_1E4206F14();

      sub_1E325F748(v8, &unk_1ECF3DB30);
      v22 = v17;
      sub_1E4206F04();
      sub_1E37BF3F8();
      v18 = sub_1E4200584();

      v22 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB40);
      sub_1E32752B0(&qword_1EE28A360, &unk_1ECF3DB40);
      sub_1E42007A4();

      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1E32752B0(&qword_1ECF3DB50, &qword_1ECF2ADC0);
      v19 = sub_1E4200844();

      v20 = OUTLINED_FUNCTION_13_8();
      v21(v20);
      *&v11[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_controlFadeTimer] = v19;
    }
  }
}

void sub_1E3FDA674()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v2 += 63;
  v3 = *v2;
  v4 = (*v2)();
  [v4 removeFromParentViewController];

  v5 = v3();
  [v5 didMoveToParentViewController_];

  v6 = v3();
  v7 = [v6 view];

  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v7 removeFromSuperview];

  OUTLINED_FUNCTION_26_3();
  v9 = (*((*v1 & v8) + 0x128))();
  v10 = v3();
  v11 = [v10 view];

  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v9 insertSubview:v11 atIndex:0];

  v12 = v3();
  v13 = [v12 view];

  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v0 bounds];
  [v13 setFrame_];

  v14 = v3();
  [v14 setShowsPlaybackControls_];

  v15 = v3();
  v16 = [v15 view];

  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v16 setUserInteractionEnabled_];

  v17 = v3();
  v18 = [v17 view];

  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = [v18 layer];

  [v19 setCornerRadius_];
  v20 = v3();
  v21 = [v20 view];

  if (!v21)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v22 = [v21 layer];

  [v22 setMasksToBounds_];
}

void sub_1E3FDA994()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 504))();
  v2 = [v1 view];

  if (v2)
  {
    [v2 removeFromSuperview];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3FDAA40(void *a1, char a2)
{
  if (a2)
  {
    v4 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    v5 += 63;
    v6 = *v5;
    v7 = (*v5)();
    v8 = [v7 view];

    if (v8)
    {
      [v8 removeFromSuperview];

      v9 = v6();
      [v9 removeFromParentViewController];

      v10 = v6();
      [v10 didMoveToParentViewController_];

      v11 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_playerViewController;
      OUTLINED_FUNCTION_37();
      v12 = *(v2 + v11);
      *(v2 + v11) = a1;
      v13 = a1;

      OUTLINED_FUNCTION_26_3();
      (*((*v4 & v14) + 0x2B0))();
      sub_1E3FD9440();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_playerViewController;
    OUTLINED_FUNCTION_37();
    v16 = *(v2 + v15);
    *(v2 + v15) = a1;
    v17 = a1;
  }
}

void sub_1E3FDABB8()
{
  v1 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v4 = [v0 snapshotViewAfterScreenUpdates_];
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_21();
    v7 = (*(v6 + 296))();
    v8 = sub_1E3FD813C();
    [v7 insertSubview:v5 belowSubview:v8];

    [v5 setAlpha_];
    v9 = *&v0[v1];
    *&v0[v1] = v5;
  }
}

void sub_1E3FDACD4(char a1)
{
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_141_0();
  if (a1)
  {
    v3 = objc_opt_self();
    OUTLINED_FUNCTION_2_4();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1E3FDC038;
    *(v4 + 24) = v2;
    v11[4] = sub_1E3FDC7DC;
    v11[5] = v4;
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_1_273();
    v11[2] = v5;
    v11[3] = &block_descriptor_24_5;
    v6 = _Block_copy(v11);

    [v3 animateWithDuration:v6 animations:0.5];

    _Block_release(v6);
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = *(Strong + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView);
      v10 = v9;

      if (v9)
      {
        [v10 setAlpha_];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1E3FDAE50(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView);
  if (v2)
  {
    OUTLINED_FUNCTION_4_0();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_141_0();
    if (a1)
    {
      v6 = objc_opt_self();
      OUTLINED_FUNCTION_2_4();
      v7 = swift_allocObject();
      *(v7 + 16) = sub_1E3BE3670;
      *(v7 + 24) = v4;
      v17 = sub_1E379E500;
      v18 = v7;
      aBlock = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_1E378AEA4;
      v16 = &block_descriptor_34_3;
      v8 = _Block_copy(&aBlock);
      v9 = v2;

      OUTLINED_FUNCTION_2_4();
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1E3FDC0BC;
      *(v10 + 24) = v5;
      v17 = sub_1E37D1918;
      v18 = v10;
      aBlock = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_1E37EB82C;
      v16 = &block_descriptor_40_2;
      v11 = _Block_copy(&aBlock);

      [v6 animateWithDuration:v8 animations:v11 completion:0.5];

      _Block_release(v11);
      _Block_release(v8);
    }

    else
    {
      v12 = v2;

      [v12 setAlpha_];
      sub_1E3FDB0D8();
    }
  }
}

void sub_1E3FDB0D8()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView;
    [*(Strong + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView) removeFromSuperview];
    v3 = *&v1[v2];
    *&v1[v2] = 0;
  }
}

uint64_t sub_1E3FDB148(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_controlFadeTimer) = 0;
  v14 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView;
  *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView) = 0;
  v16 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeGradient;
  *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeGradient) = 0;
  v4 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_layout;
  type metadata accessor for MultiPlayerContainerViewLayout();
  OUTLINED_FUNCTION_71_4();
  swift_allocObject();
  v5 = sub_1E3FD79F4();

  *(v2 + v4) = v5;
  v6 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator) = 0;
  v7 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___dimmingView;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___dimmingView) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isDimmed) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isPlayerInset) = 0;
  v8 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView) = 0;
  v9 = (v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_onSelect);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_closeHandler);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_fullscreenHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_volumeObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_statusObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isReadyForDisplayObserver) = 0;
  v15 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___singlePressGesture;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___singlePressGesture) = 0;
  v12 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___hoverGestureRecognizer;
  *(v2 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___hoverGestureRecognizer) = 0;

  sub_1E34AF594(*v9);
  sub_1E34AF594(*v10);
  sub_1E34AF594(*v11);

  type metadata accessor for MultiPlayerContainerView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E3FDB354()
{
  v1 = v0;
  v75.receiver = v0;
  v75.super_class = type metadata accessor for MultiPlayerContainerView();
  objc_msgSendSuper2(&v75, sel_layoutSubviews);
  OUTLINED_FUNCTION_26_3();
  v2 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + 0x178);
  if (v4())
  {
    sub_1E3FD83EC();
  }

  else
  {
    v5 = [v0 bounds];
  }

  v6 = *((*v2 & *v0) + 0x1F8);
  v7 = (v6)(v5);
  v8 = [v7 player];

  if (v8)
  {
    v9 = [v8 isExternalPlaybackActive];
  }

  else
  {
    v9 = 0;
  }

  v10 = v6();
  v11 = [v10 view];

  if (!v11)
  {
    __break(1u);
    goto LABEL_36;
  }

  v12 = [v11 superview];

  v13 = (*((*v2 & *v1) + 0x128))();
  if (!v12)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_1E3280A90(0, &qword_1EE23AE80);
  v14 = sub_1E4206F64();

  if (v14)
  {
    v15 = v6();
    v16 = [v15 isReadyForDisplay];

    if (!(v9 & 1 | ((v16 & 1) == 0)))
    {
      v17 = v6();
      v13 = [v17 view];

      if (v13)
      {
        v18 = OUTLINED_FUNCTION_13_172();
        [v19 v20];
        goto LABEL_13;
      }

LABEL_36:
      __break(1u);
      return;
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_9_174();
  v22 = *(v21 + 176);

  v22(v76, v23);
  v24 = *&v76[2];
  v25 = *&v76[3];

  if (v77)
  {
    v26 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  else
  {
    v26 = v24;
  }

  if (v77)
  {
    v27 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v27 = v25;
  }

  OUTLINED_FUNCTION_9_174();
  v29 = *(v28 + 200);

  v31 = v29(v30);
  v33 = v32;

  v34 = *&v31;
  v35 = 0.0;
  if (v33)
  {
    v34 = 0.0;
  }

  v74 = v34;
  OUTLINED_FUNCTION_9_174();
  v37 = *(v36 + 304);

  v39 = v37(v38);
  LOBYTE(v37) = v40;

  v42 = *&v39;
  if (v37)
  {
    v42 = 0.0;
  }

  v73 = v42;
  v43 = 0.0;
  if ((v4)(v41))
  {
    OUTLINED_FUNCTION_21_112();
    Width = CGRectGetWidth(v78);
    v79.origin.x = OUTLINED_FUNCTION_13_172();
    v43 = (Width - CGRectGetWidth(v79)) * 0.5;
    OUTLINED_FUNCTION_21_112();
    Height = CGRectGetHeight(v80);
    v81.origin.x = OUTLINED_FUNCTION_13_172();
    v35 = (Height - CGRectGetHeight(v81)) * 0.5;
  }

  v46 = sub_1E3FD7FA0();
  OUTLINED_FUNCTION_21_112();
  v47 = CGRectGetWidth(v82);
  OUTLINED_FUNCTION_21_112();
  v48 = CGRectGetHeight(v83);
  OUTLINED_FUNCTION_9_174();
  v50 = *(v49 + 200);

  v52 = COERCE_DOUBLE(v50(v51));
  v54 = v53;

  if (v54)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v52;
  }

  OUTLINED_FUNCTION_9_174();
  v57 = *(v56 + 304);

  v59 = COERCE_DOUBLE(v57(v58));
  LOBYTE(v57) = v60;

  if (v57)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = v59;
  }

  [v46 setFrame_];

  v62 = sub_1E3FD813C();
  OUTLINED_FUNCTION_21_112();
  [v62 setFrame_];

  v63 = *(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView);
  if (v63)
  {
    v64 = v63;
    OUTLINED_FUNCTION_21_112();
    [v64 setFrame_];
  }

  v65 = sub_1E3FD7F08();
  v66 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator;
  [*(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___volumeIndicator) frame];
  v67 = CGRectGetMinX(v84) + -40.0;
  [*(v1 + v66) frame];
  v68 = CGRectGetMinY(v85) + -40.0;
  OUTLINED_FUNCTION_21_112();
  v69 = CGRectGetWidth(v86);
  [*(v1 + v66) frame];
  v70 = v69 - CGRectGetMinX(v87) + 40.0;
  OUTLINED_FUNCTION_21_112();
  v71 = CGRectGetHeight(v88);
  [*(v1 + v66) frame];
  [v65 setFrame_];

  v72 = sub_1E3FD7E18();
  [v72 frame];
  [v72 setFrame_];
}

void (*sub_1E3FDB9F0())(void)
{
  type metadata accessor for MultiPlayerContainerView();
  v1 = sub_1E3FD8490();
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2A8))(0, 1, COERCE_DOUBLE(*&v1), 0);
  [v0 setNeedsLayout];
  OUTLINED_FUNCTION_26_3();
  result = (*((*v2 & v3) + 0x1B0))();
  if (result)
  {
    v5 = result;
    result();

    return sub_1E34AF594(v5);
  }

  return result;
}

void sub_1E3FDBB50(char a1)
{
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_141_0();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v7[4] = sub_1E3FDC164;
  v7[5] = v4;
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1_273();
  v7[2] = v5;
  v7[3] = &block_descriptor_84_3;
  v6 = _Block_copy(v7);

  [v2 animateWithDuration:v6 animations:0.25];
  _Block_release(v6);
}

uint64_t sub_1E3FDBC28(char a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = a1 & 1;
  OUTLINED_FUNCTION_21();
  result = (*(v8 + 376))();
  if ((result & 1) == v7)
  {
    if (a3)
    {
      return a3();
    }
  }

  else
  {
    v10 = OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_isPlayerInset;
    swift_beginAccess();
    *(v4 + v10) = v7;
    sub_1E3280A90(0, &qword_1EE23AE80);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_2_4();
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;

    v12 = OUTLINED_FUNCTION_13_8();
    sub_1E34AF604(v12);
    OUTLINED_FUNCTION_5_11();
    sub_1E3B02648();
  }

  return result;
}

BOOL sub_1E3FDBDCC(void *a1)
{
  [a1 locationInView_];
  v3 = v2;
  v5 = v4;
  v6 = sub_1E3FD7E18();
  v7 = [v6 isHidden];

  if (v7)
  {
    return 1;
  }

  [*(v1 + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView____lazy_storage___controlsView) frame];
  v9.x = v3;
  v9.y = v5;
  return !CGRectContainsPoint(v10, v9);
}

id sub_1E3FDBEB4(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    (*(v7 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    OUTLINED_FUNCTION_171_0();
    v10 = sub_1E4207994();
    v11 = OUTLINED_FUNCTION_171_0();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = 0;
  }

  v13 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_1E3FDC038()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v1 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC8VideosUI24MultiPlayerContainerView_snapshotView);
  v3 = v2;

  if (!v2)
  {
    return 1;
  }

  [v3 setAlpha_];

  return 0;
}

void sub_1E3FDC0C4()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
  }

  OUTLINED_FUNCTION_5_0();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 layoutIfNeeded];
  }
}

void sub_1E3FDC164()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1E3FD813C();

    v5 = 1.0;
    if (v1)
    {
      v5 = 0.0;
    }

    [v4 setAlpha_];
  }
}

void sub_1E3FDC1E0()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    OUTLINED_FUNCTION_64();
    if ((*(v3 + 456))())
    {
      OUTLINED_FUNCTION_16_145();
      v5 = (*(v4 + 504))();
      v0();
      v6 = OUTLINED_FUNCTION_74();
      sub_1E34AF594(v6);
    }
  }
}

void sub_1E3FDC2B8()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    OUTLINED_FUNCTION_64();
    if ((*(v3 + 480))())
    {
      OUTLINED_FUNCTION_16_145();
      v5 = (*(v4 + 504))();
      v0();
      v6 = OUTLINED_FUNCTION_74();
      sub_1E34AF594(v6);
    }
  }
}

void sub_1E3FDC390()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for MultiPlayerContainerView();
    v2 = sub_1E3FD8490();
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A8))(1, 1, COERCE_DOUBLE(*&v2), 0);
  }
}

void sub_1E3FDC43C(uint64_t a1, char a2)
{
  if (a2 == 2 || (a2 & 1) == 0)
  {
    v2 = ((a1 & 0x7FFFFFFF) == 0) | BYTE4(a1) & 1;
  }

  else
  {
    v2 = 1;
  }

  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setNeedsLayout];
  }

  OUTLINED_FUNCTION_5_0();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1E3FD7FA0();

    [v7 setHidden_];
  }

  OUTLINED_FUNCTION_15_0();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1E3FD7F08();

    [v10 setHidden_];
  }
}

void sub_1E3FDC55C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0 && *a1 == 2)
  {
    OUTLINED_FUNCTION_5_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      OUTLINED_FUNCTION_64();
      (*(v3 + 728))(1);
    }

    OUTLINED_FUNCTION_5_0();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v4 accessibilityNotifySnapshotRemoval];
    }
  }
}

void sub_1E3FDC630(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v7[10] = v2;
    v7[11] = v3;
    v4 = objc_opt_self();
    v7[4] = sub_1E3FDC6EC;
    v7[5] = v1;
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_1_273();
    v7[2] = v5;
    v7[3] = &block_descriptor_102_2;
    v6 = _Block_copy(v7);

    [v4 animateWithDuration:v6 animations:0.25];
    _Block_release(v6);
  }
}

void sub_1E3FDC6EC()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_64();
    v3 = (*(v2 + 504))();

    v4 = [v3 view];
    if (v4)
    {
      [v4 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E3FDC7F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  v4 = *(v1 + 144);
  v5 = *(v1 + 160);
  v6 = sub_1E4202744();
  v7 = 0uLL;
  v8 = 0uLL;
  if ((v5 & 1) == 0)
  {
    sub_1E4200A54();
    *(&v7 + 1) = v9;
    *(&v8 + 1) = v10;
  }

  v11 = 0.0;
  if ((v4 & 1) == 0)
  {
    v11 = v3;
  }

  *a1 = *v1;
  *(a1 + 8) = v11;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 40) = v8;
  *(a1 + 56) = v5 & 1;
  *(a1 + 57) = 256;
}

void *sub_1E3FDC8D4(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 23) = 0u;
    *(result + 21) = 0u;
    *(result + 19) = 0u;
    *(result + 17) = 0u;
    *(result + 15) = 0u;
    *(result + 13) = 0u;
    *(result + 11) = 0u;
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 202) = 0;
    *(result + 100) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 203) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 203) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3FDC954()
{
  result = qword_1ECF3DBF0;
  if (!qword_1ECF3DBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DBF8);
    sub_1E3FDC9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DBF0);
  }

  return result;
}

unint64_t sub_1E3FDC9E0()
{
  result = qword_1ECF3DC00;
  if (!qword_1ECF3DC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DC08);
    sub_1E3FDCA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DC00);
  }

  return result;
}

unint64_t sub_1E3FDCA6C()
{
  result = qword_1ECF6A6F0[0];
  if (!qword_1ECF6A6F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6A6F0);
  }

  return result;
}

id sub_1E3FDCAD4(uint64_t a1, double a2)
{
  v4 = [objc_allocWithZone(VUIFavoriteBannerCollectionViewCell) init];
  sub_1E38BAE74(v16);
  v14 = v16[1];
  v15 = v16[0];
  v5 = v17;
  v6 = v18 | (v19 << 16);
  type metadata accessor for LayoutGrid();
  v7 = sub_1E3A2579C(a2);
  v8 = (*(*a1 + 392))(v7);
  if (v8)
  {
    v9 = v8;
    sub_1E3C2AE10();
    v11 = v10;
    (*(*v9 + 1640))();
  }

  type metadata accessor for SportsFavoriteBannerCell();
  v20 = v15;
  v21 = v14;
  v22 = v5;
  v24 = BYTE2(v6);
  v23 = v6;
  v12 = sub_1E3B799C0(a1);

  if (v12)
  {
    [v12 setWidth_];

    return v12;
  }

  return v4;
}

void sub_1E3FDCC70(void *a1, uint64_t a2, double a3)
{
  if (a3 > 0.0)
  {
    v29 = v6;
    v30 = v5;
    v31 = v3;
    v32 = v4;
    v19 = a1;
    sub_1E38BAE74(v20);
    v17 = v20[1];
    v18 = v20[0];
    v9 = v21;
    v10 = v22 | (v23 << 16);
    type metadata accessor for LayoutGrid();
    v11 = sub_1E3A2579C(a3);
    v12 = (*(*a2 + 392))(v11);
    if (v12)
    {
      v13 = v12;
      sub_1E3C2AE10();
      v15 = v14;
      (*(*v13 + 1640))();
    }

    type metadata accessor for SportsFavoriteBannerCell();
    v24 = v18;
    v25 = v17;
    v26 = v9;
    v28 = BYTE2(v10);
    v27 = v10;
    v16 = sub_1E3B799C0(a2);

    [v16 setWidth_];
  }
}

uint64_t sub_1E3FDCE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3FDD094();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E3FDCE74()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3FDD094();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

unint64_t sub_1E3FDCF48(uint64_t a1)
{
  result = sub_1E3FDCF70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3FDCF70()
{
  result = qword_1ECF6A780[0];
  if (!qword_1ECF6A780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6A780);
  }

  return result;
}

uint64_t sub_1E3FDCFC4()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3FDCF70();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E3FDD018()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3FDCF70();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3FDD06C()
{
  sub_1E3FDCF70();
  sub_1E4201F04();
  __break(1u);
}

unint64_t sub_1E3FDD094()
{
  result = qword_1ECF6A890;
  if (!qword_1ECF6A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF6A890);
  }

  return result;
}

void sub_1E3FDD0E8(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if (a2)
  {
    v11 = objc_allocWithZone(type metadata accessor for ToastViewController());

    v12 = a2;
    sub_1E37FAED4(a5, a6);
    v13 = OUTLINED_FUNCTION_5_222();
    v16 = sub_1E3FDD454(v13, v14, v15);
    [v12 addChildViewController_];
    v17 = [v12 view];
    if (v17)
    {
      v18 = v17;
      v19 = [v16 view];
      if (v19)
      {
        v20 = v19;
        [v18 addSubview_];

        v21 = [v16 view];
        if (v21)
        {
          v22 = [v12 view];
          if (v22)
          {
            v23 = v22;
            [v22 bounds];
            OUTLINED_FUNCTION_3();

            v24 = OUTLINED_FUNCTION_6();
            [v25 v26];

            [v16 didMoveToParentViewController_];
            goto LABEL_15;
          }

LABEL_21:
          __break(1u);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_1ECF6A898)
  {
    v12 = qword_1ECF6A898;
    v28 = [v12 rootViewController];
    if (v28)
    {
      v16 = v28;
      type metadata accessor for ToastViewController();
      if (swift_dynamicCastClass())
      {
        *(v12 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC111ToastWindow_overridesOrientation) = a4 & 1;
        v29 = OUTLINED_FUNCTION_5_222();
        sub_1E3FDE568(v29, v30, v31, v32);
        goto LABEL_15;
      }
    }

    else
    {
      v16 = v12;
    }
  }

  v33 = [objc_opt_self() mainScreen];
  [v33 bounds];
  OUTLINED_FUNCTION_3();

  v34 = objc_allocWithZone(type metadata accessor for ToastWindow());
  v35 = OUTLINED_FUNCTION_6();
  v38 = [v36 v37];
  v38[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC111ToastWindow_overridesOrientation] = a4 & 1;
  v39 = objc_allocWithZone(type metadata accessor for ToastViewController());

  sub_1E37FAED4(a5, a6);
  v40 = OUTLINED_FUNCTION_5_222();
  v12 = sub_1E3FDD454(v40, v41, v42);
  v43 = v38;
  [v43 setRootViewController_];
  [v43 setWindowLevel_];

  [v43 makeKeyAndVisible];
  v16 = qword_1ECF6A898;
  qword_1ECF6A898 = v43;
LABEL_15:

  if (a7)
  {
    a7();
  }
}

id sub_1E3FDD454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_autoDismissWorkItem] = 0;
  (*(*a1 + 280))(a2 != 0);
  *&v4[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_toastModel] = a1;
  v9 = *v8;
  v10 = *(v8 + 1);
  *v8 = a2;
  *(v8 + 1) = a3;

  sub_1E37FAED4(a2, a3);
  sub_1E37FAED8(v9, v10);
  v13.receiver = v4;
  v13.super_class = type metadata accessor for ToastViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  sub_1E37FAED8(a2, a3);

  return v11;
}

void sub_1E3FDD570()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_autoDismissWorkItem) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3FDD608()
{
  type metadata accessor for ToastPassthroughView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView_];
}

id sub_1E3FDD6AC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ToastViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];

    sub_1E3FDD75C();
    return sub_1E3FDDAB8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3FDD75C()
{
  v5 = v0;
  v6 = sub_1E42026C4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  nullsub_1(v7, v8);
  v10 = v9;
  v12 = v11;
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC20));

  v32 = v10;
  sub_1E37FAED4(v10, v12);
  v14 = sub_1E4201E44();
  v15 = [v14 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v17 clearColor];
  [v16 setBackgroundColor_];

  v19 = [v14 view];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v19;
  v21 = [v17 clearColor];
  [v20 setTintColor_];

  v22 = v14;
  sub_1E42026B4();
  sub_1E4201E24();

  [v5 addChildViewController_];
  v23 = [v5 view];
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = v23;
  v25 = [v22 view];
  if (!v25)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = v25;
  [v24 addSubview_];

  [v22 didMoveToParentViewController_];
  OUTLINED_FUNCTION_8();
  v28 = *(v27 + 184);

  v28(1);

  v29 = [v5 view];
  if (v29)
  {
    v30 = v29;
    [v29 safeAreaInsets];
    OUTLINED_FUNCTION_3();

    [v22 setAdditionalSafeAreaInsets_];

    sub_1E37FAED8(v32, v12);

    v31 = *&v5[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController];
    *&v5[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController] = v22;

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1E3FDDAB8()
{
  v1 = sub_1E4204014();
  OUTLINED_FUNCTION_1_2();
  v26 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = sub_1E4203FC4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  v11 = *(v10 + 224);

  v13 = v11(v12);

  if (v13 > 0.0)
  {
    v24 = OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_autoDismissWorkItem;
    v25 = v1;
    if (*(v0 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_autoDismissWorkItem))
    {

      sub_1E4204034();
    }

    OUTLINED_FUNCTION_4_0();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1E3FDF36C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    aBlock[3] = &block_descriptor_28_2;
    _Block_copy(aBlock);
    v27 = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E378AD28();
    sub_1E42072E4();
    sub_1E4204054();
    swift_allocObject();
    v16 = sub_1E4204024();

    sub_1E3280A90(0, &qword_1EE23B1D0);
    v17 = sub_1E4206A04();
    sub_1E4204004();
    OUTLINED_FUNCTION_8();
    v19 = *(v18 + 224);

    v19(v20);

    sub_1E4204074();
    v21 = *(v26 + 8);
    v22 = v5;
    v23 = v25;
    v21(v22, v25);
    sub_1E4206994();

    v21(v8, v23);
    *(v0 + v24) = v16;
  }

  return result;
}

uint64_t sub_1E3FDDE74(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ToastViewController();
  objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
  sub_1E4203E44();
  sub_1E4200FE4();
}

id sub_1E3FDDF54()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ToastViewController();
  objc_msgSendSuper2(&v11, sel_viewSafeAreaInsetsDidChange);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result safeAreaInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    result = *&v0[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController];
    if (result)
    {
      return [result setAdditionalSafeAreaInsets_];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3FDE058()
{
  v1 = v0;
  v42.receiver = v0;
  v42.super_class = type metadata accessor for ToastViewController();
  objc_msgSendSuper2(&v42, sel_viewDidLayoutSubviews);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  type metadata accessor for LayoutGrid();
  [v3 bounds];
  OUTLINED_FUNCTION_3();

  v43.origin.x = OUTLINED_FUNCTION_6();
  Width = CGRectGetWidth(v43);
  sub_1E3A258E4(Width);
  v5 = OUTLINED_FUNCTION_7_213();
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 bounds];
  OUTLINED_FUNCTION_3();

  v7.n128_f64[0] = OUTLINED_FUNCTION_51_0();
  nullsub_1(v7, v8);
  v9 = OUTLINED_FUNCTION_7_213();
  if (!v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  [v9 effectiveUserInterfaceLayoutDirection];

  OUTLINED_FUNCTION_51_0();
  sub_1E4206E44();
  OUTLINED_FUNCTION_3();
  v11 = OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController;
  v12 = *&v1[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController];
  if (v12)
  {
    v13 = v12;
    sub_1E4201E14();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v1 traitCollection];
  [v16 displayScale];

  OUTLINED_FUNCTION_6();
  sub_1E4206E34();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v1 view];
  if (!v25)
  {
    goto LABEL_17;
  }

  v26 = v25;
  [v25 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v44.origin.x = v28;
  v44.origin.y = v30;
  v44.size.width = v32;
  v44.size.height = v34;
  CGRectGetHeight(v44);
  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = v22;
  v45.size.height = v24;
  CGRectGetHeight(v45);
  v35 = *&v1[v11];
  if (!v35)
  {
    return;
  }

  v36 = [v35 view];
  if (!v36)
  {
    goto LABEL_18;
  }

  v37 = v36;
  v38 = [v1 view];
  if (!v38)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = v38;
  [v38 bounds];

  v40 = [v1 view];
  if (!v40)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v41 = v40;
  [v40 vuiIsRTL];

  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  [v37 setFrame_];
}

void sub_1E3FDE3C0(void *a1)
{
  OUTLINED_FUNCTION_5_16();
  v12 = v1;
  v13 = type metadata accessor for ToastViewController();
  v5 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v6, v7, a1, v5);
  OUTLINED_FUNCTION_4_0();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v3;
  v9[4] = v2;
  v11[4] = sub_1E3FDF2B4;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E37C7850;
  v11[3] = &block_descriptor_152;
  v10 = _Block_copy(v11);

  [a1 animateAlongsideTransition:v10 completion:0];
  _Block_release(v10);
}

id sub_1E3FDE568(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *(v5 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController);
  if (v10)
  {
    v11 = v10;
    [v11 willMoveToParentViewController_];
    result = [v11 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v13 = result;
    [result removeFromSuperview];

    [v11 removeFromParentViewController];
  }

  (*(*a1 + 280))(a2 != 0);
  *(v5 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_toastModel) = a1;

  v14 = (v5 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler);
  v15 = *(v5 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler);
  v16 = *(v5 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler + 8);
  *v14 = a2;
  v14[1] = a3;
  sub_1E37FAED4(a2, a3);
  v17 = sub_1E37FAED8(v15, v16);
  if (a4)
  {
    MEMORY[0x1EEE9AC00](v17);
    sub_1E4203E44();
    sub_1E4200FE4();
  }

  else
  {
    sub_1E3FDD75C();
  }

  return sub_1E3FDDAB8();
}

uint64_t sub_1E3FDE804()
{
  v0 = sub_1E4202514();
  OUTLINED_FUNCTION_1_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E4203E44();
  sub_1E4202504();
  sub_1E4200FD4();
  (*(v2 + 8))(v6, v0);
}

id sub_1E3FDE9A4()
{
  OUTLINED_FUNCTION_0_8();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ToastPassthroughView();
  return OUTLINED_FUNCTION_9_175(v8.super_class, sel_initWithFrame_, v1, v2, v3, v4, v5, v6, v8);
}

id sub_1E3FDEA0C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToastPassthroughView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3FDEAB4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_16();
  v12 = v3();
  v4 = OUTLINED_FUNCTION_6_12();
  v7 = objc_msgSendSuper2(v5, v6, a1, v4, v1, v12);
  if (v7)
  {
    sub_1E3280A90(0, &qword_1EE23AE80);
    v8 = v7;
    v9 = v1;
    v10 = sub_1E4206F64();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id sub_1E3FDEB9C(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_5_16();
  v5 = v4;
  v6 = a3;
  v7 = v5;
  OUTLINED_FUNCTION_6_12();
  v8 = sub_1E3FDEAB4(a3);

  return v8;
}

id sub_1E3FDEC1C(void *a1)
{
  v1[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC111ToastWindow_overridesOrientation] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToastWindow();
  v3 = objc_msgSendSuper2(&v5, sel_initWithWindowScene_, a1);

  return v3;
}

id sub_1E3FDECA0()
{
  OUTLINED_FUNCTION_0_8();
  v0[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC111ToastWindow_overridesOrientation] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ToastWindow();
  return OUTLINED_FUNCTION_9_175(v8.super_class, sel_initWithFrame_, v1, v2, v3, v4, v5, v6, v8);
}

id sub_1E3FDED14(void *a1)
{
  v1[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC111ToastWindow_overridesOrientation] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToastWindow();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3FDEDC8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3FDEE3C(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + qword_1ECF719F0);
  OUTLINED_FUNCTION_1_2();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v11 - v8, a1, v3, v7);
  v9 = sub_1E4201E44();
  (*(v5 + 8))(a1, v3);
  return v9;
}

void *sub_1E3FDEF98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_3();
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + qword_1ECF719F0);
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v6 + 16))(&v14 - v9, v8);
  v10 = sub_1E4201E34();
  v11 = *(v6 + 8);
  v12 = v10;
  v11(a2, v4);
  if (v10)
  {
  }

  return v10;
}

id sub_1E3FDF0C4(void *a1)
{
  OUTLINED_FUNCTION_26_3();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToastHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3FDF1B0()
{
  OUTLINED_FUNCTION_26_3();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToastHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3FDF2B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];
    if (v5)
    {
      v6 = v5;
      [v5 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3FDF36C()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3FDE804();
  }
}

uint64_t sub_1E3FDF3C8(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 184);

  v3(a1);
}

void sub_1E3FDF43C()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_autoDismissWorkItem;
    if (*(Strong + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_autoDismissWorkItem))
    {

      sub_1E4204034();
    }

    *&v1[v2] = 0;

    v3 = v1;
    v4 = [v3 parentViewController];
    if (v4)
    {

      [v3 willMoveToParentViewController_];
      v5 = [v3 view];

      if (!v5)
      {
        __break(1u);
        return;
      }

      [v5 removeFromSuperview];

      [v3 removeFromParentViewController];
    }

    else
    {

      if (qword_1ECF6A898)
      {
        [qword_1ECF6A898 resignKeyWindow];
        v6 = qword_1ECF6A898;
      }

      else
      {
        v6 = 0;
      }

      qword_1ECF6A898 = 0;
    }
  }
}

void sub_1E3FDF570()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3FDE804();
    v2 = *&v1[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler];
    if (v2)
    {
      v3 = *&v1[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler + 8];

      v2(v4);
      sub_1E37FAED8(v2, v3);
    }
  }
}

id sub_1E3FDF644()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays);
  v4 = sub_1E32AE9B0(v3);

  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6911E60](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (!sub_1E3FDF778())
    {
      goto LABEL_14;
    }
  }

  v1 = *(v1 + v2);
  result = sub_1E32AE9B0(v1);
  if (!result)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_19:

    v7 = MEMORY[0x1E6911E60](0, v1);
LABEL_14:

    return v7;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v1 + 32);
  }

  __break(1u);
  return result;
}

BOOL sub_1E3FDF778()
{
  v0 = sub_1E4205734();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E42051D4();
  if (v7)
  {
    v8 = v7;
    v9 = (*(v2 + 104))(v6, *MEMORY[0x1E69D3B50], v0);
    MEMORY[0x1EEE9AC00](v9);
    *&v12[-16] = v6;
    v10 = sub_1E3FDFA68(sub_1E3FE15F8, &v12[-32], v8);

    (*(v2 + 8))(v6, v0);
  }

  else
  {
    return 0;
  }

  return v10;
}

void sub_1E3FDF8C0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E42051B4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_includeChildPlays) != 1)
  {
    goto LABEL_15;
  }

  v8 = OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays;
  if (sub_1E32AE9B0(*(v0 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays)) > 1)
  {
LABEL_14:

LABEL_15:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v9 = *(v0 + v8);
  v10 = sub_1E32AE9B0(v9);
  v11 = (v3 + 8);

  v12 = 0;
  while (1)
  {
    if (v10 == v12)
    {

      goto LABEL_15;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E6911E60](v12, v9);
    }

    else
    {
      if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v13 = *(v9 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    sub_1E42051C4();
    sub_1E42050C4();
    v16 = v15;

    (*v11)(v7, v1);
    ++v12;
    if (v16)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

BOOL sub_1E3FDFA68(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_1E4205734() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_1E3FDFB90(uint64_t a1, unint64_t a2, char a3)
{
  *(v3 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_playMap) = MEMORY[0x1E69E7CC8];
  *(v3 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_237();
  v35 = v7;
  sub_1E3FE21D8(v7, v3 + v6);
  *(v3 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_includeChildPlays) = a3;
  v8 = sub_1E3B500B4();
  v38 = sub_1E32AE9B0(a2);
  v9 = OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_playMap;

  v10 = 0;
  v36 = v8;
  v37 = v9;
  while (1)
  {
    if (v38 == v10)
    {

      swift_beginAccess();

      v39 = sub_1E3FE153C(v32);
      sub_1E3FE14C0(&v39);

      OUTLINED_FUNCTION_2_237();
      sub_1E3FE2254(v35, v33);
      *(v8 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays) = v39;

      return v8;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](v10, a2);
    }

    else
    {
      if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 8 * v10 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v13 = sub_1E4205204();
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      swift_beginAccess();
      v17 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v8 + v9);
      v18 = v39;
      *(v8 + v9) = 0x8000000000000000;
      v19 = v15;
      v20 = sub_1E327D33C(v15, v16);
      if (__OFADD__(*(v18 + 16), (v21 & 1) == 0))
      {
        goto LABEL_22;
      }

      v22 = v20;
      v9 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8C0);
      if (sub_1E4207644())
      {
        v23 = sub_1E327D33C(v19, v16);
        if ((v9 & 1) != (v24 & 1))
        {
          goto LABEL_24;
        }

        v22 = v23;
      }

      if (v9)
      {

        v25 = v39;
        v26 = v39[7];
        v27 = *(v26 + 8 * v22);
        *(v26 + 8 * v22) = v17;
      }

      else
      {
        v25 = v39;
        v39[(v22 >> 6) + 8] |= 1 << v22;
        v28 = (v25[6] + 16 * v22);
        *v28 = v19;
        v28[1] = v16;
        *(v25[7] + 8 * v22) = v17;
        v29 = v25[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_23;
        }

        v25[2] = v31;
      }

      v8 = v36;
      v9 = v37;
      *(v36 + v37) = v25;
      swift_endAccess();
    }

    ++v10;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1E4207A74();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1E3FDFEA4(void *a1)
{
  v2 = v1;
  result = sub_1E4205204();
  if (v5)
  {
    v6 = result;
    v7 = v5;
    v8 = OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_playMap;
    swift_beginAccess();
    v9 = a1;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + v8);
    sub_1E3FE209C(v9, v6, v7);
    *(v2 + v8) = v11;

    swift_endAccess();

    v12[0] = sub_1E3FE153C(v10);
    sub_1E3FE14C0(v12);

    *(v2 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays) = v12[0];
  }

  return result;
}

uint64_t sub_1E3FDFFDC()
{
  OUTLINED_FUNCTION_2_237();
  sub_1E3FE2254(v0 + v1, v2);
}

uint64_t sub_1E3FE0038()
{
  v0 = sub_1E3B4FF80();
  OUTLINED_FUNCTION_2_237();
  sub_1E3FE2254(v1 + v2, v3);

  return v0;
}

uint64_t sub_1E3FE0094()
{
  v0 = sub_1E3FE0038();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3FE00E8()
{
  OUTLINED_FUNCTION_31_1();
  v108 = v0;
  v2 = v1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDA0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  v99 = &v95 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v97 = v7 - v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v95 - v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v95 - v12;
  sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v106 = v14;
  v107 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v102 = (v15 - v16);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v95 - v18;
  sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v104 = v20;
  v105 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v96 = v21 - v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v95 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v95 - v27;
  type metadata accessor for SportsPlayIndex.IndexType(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = (v30 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v95 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v95 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC28);
  v40 = OUTLINED_FUNCTION_17_2(v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v95 - v41;
  v44 = (&v95 + *(v43 + 56) - v41);
  sub_1E3FE21D8(v2, &v95 - v41);
  sub_1E3FE21D8(v108, v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_0_314();
      sub_1E3FE21D8(v42, v35);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC38);
      v47 = *(v46 + 48);
      v48 = *(v46 + 64);
      v49 = *(v35 + v48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v50 = *v35;
        v107 = v49;
        v108 = v50;
        v51 = *v44;
        v106 = *(v44 + v48);
        v52 = v104;
        v53 = *(v104 + 32);
        v54 = v35 + v47;
        v55 = v105;
        v53(v28, v54, v105);
        v53(v25, v44 + v47, v55);
        if (v108 == v51)
        {
          v56 = sub_1E4205B14();
          v57 = *(v52 + 8);
          v57(v25, v55);
          v57(v28, v55);
          if (v56)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v81 = *(v52 + 8);
          v81(v25, v55);
          v81(v28, v55);
        }

LABEL_24:
        OUTLINED_FUNCTION_8_187();
        goto LABEL_25;
      }

      (*(v104 + 8))(v35 + v47, v105);
    }

    else
    {
      OUTLINED_FUNCTION_0_314();
      sub_1E3FE21D8(v42, v32);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC30);
      v59 = *(v58 + 48);
      v60 = *(v58 + 64);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v108 = *v32;
        v95 = *v44;
        v62 = v106;
        v61 = v107;
        v63 = *(v106 + 32);
        v64 = v100;
        v63(v100, v32 + v59, v107);
        v65 = v32 + v60;
        v66 = v103;
        sub_1E385BA30(v65, v103);
        v67 = v44 + v59;
        v68 = v102;
        v63(v102, v67, v61);
        v69 = v101;
        sub_1E385BA30(v44 + v60, v101);
        if (v108 != v95)
        {
          OUTLINED_FUNCTION_45_3(v69);
          v82 = *(v62 + 8);
          v82(v68, v61);
          OUTLINED_FUNCTION_45_3(v66);
          v82(v64, v61);
          goto LABEL_24;
        }

        v70 = v64;
        if ((sub_1E3FE0A34() & 1) == 0)
        {
          OUTLINED_FUNCTION_45_3(v69);
          v83 = *(v106 + 8);
          v84 = v107;
          v83(v68, v107);
          OUTLINED_FUNCTION_45_3(v66);
          v83(v64, v84);
          goto LABEL_24;
        }

        v71 = v99;
        v72 = *(v98 + 48);
        sub_1E385B9C0(v66, v99);
        sub_1E385B9C0(v69, v71 + v72);
        v73 = v69;
        v74 = v105;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v105);
        v76 = v66;
        v77 = v106;
        if (EnumTagSinglePayload == 1)
        {
          sub_1E325F6F0(v73, &qword_1ECF2BD90);
          v78 = *(v77 + 8);
          v79 = v68;
          v80 = v107;
          v78(v79, v107);
          sub_1E325F6F0(v76, &qword_1ECF2BD90);
          v78(v70, v80);
          if (__swift_getEnumTagSinglePayload(v71 + v72, 1, v74) == 1)
          {
            sub_1E325F6F0(v71, &qword_1ECF2BD90);
            goto LABEL_24;
          }
        }

        else
        {
          v85 = v97;
          sub_1E385B9C0(v71, v97);
          if (__swift_getEnumTagSinglePayload(v71 + v72, 1, v74) != 1)
          {
            v88 = v104;
            v89 = v96;
            (*(v104 + 32))(v96, v71 + v72, v74);
            OUTLINED_FUNCTION_3_238();
            sub_1E3FE22AC(v90, v91);
            LODWORD(v108) = sub_1E4205E84();
            v92 = *(v88 + 8);
            v92(v89, v74);
            sub_1E325F6F0(v101, &qword_1ECF2BD90);
            v93 = *(v77 + 8);
            v94 = v107;
            v93(v102, v107);
            sub_1E325F6F0(v103, &qword_1ECF2BD90);
            v93(v100, v94);
            v92(v97, v74);
            sub_1E325F6F0(v71, &qword_1ECF2BD90);
            goto LABEL_24;
          }

          OUTLINED_FUNCTION_45_3(v101);
          v86 = *(v77 + 8);
          v87 = v107;
          v86(v102, v107);
          OUTLINED_FUNCTION_45_3(v103);
          v86(v70, v87);
          (*(v104 + 8))(v85, v74);
        }

        sub_1E325F6F0(v71, &qword_1ECF2BDA0);
        goto LABEL_24;
      }

      sub_1E325F6F0(v32 + v60, &qword_1ECF2BD90);
      (*(v106 + 8))(v32 + v59, v107);
    }

LABEL_17:
    sub_1E325F6F0(v42, &qword_1ECF3DC28);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_0_314();
  sub_1E3FE21D8(v42, v38);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_17;
  }

LABEL_8:
  sub_1E3FE2254(v42, type metadata accessor for SportsPlayIndex.IndexType);
LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE0A34()
{
  sub_1E4205784();
  sub_1E3FE22AC(&qword_1ECF2BDB8, MEMORY[0x1E69D3C00]);
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

void sub_1E3FE0B14()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v38 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v37 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  type metadata accessor for SportsPlayIndex.IndexType(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = (v23 - v22);
  OUTLINED_FUNCTION_0_314();
  sub_1E3FE21D8(v0, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *v24;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC38);
      v28 = *&v24[*(v27 + 64)];
      v29 = v37;
      (*(v37 + 32))(v20, &v24[*(v27 + 48)], v15);
      MEMORY[0x1E69124B0](1);
      MEMORY[0x1E69124B0](v26);
      OUTLINED_FUNCTION_3_238();
      sub_1E3FE22AC(v30, v31);
      OUTLINED_FUNCTION_15_159();
      MEMORY[0x1E69124B0](v28);
      (*(v29 + 8))(v20, v15);
    }

    else
    {
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC30);
      v33 = *(v32 + 64);
      (*(v38 + 32))(v14, &v24[*(v32 + 48)], v9);
      sub_1E385BA30(&v24[v33], v8);
      MEMORY[0x1E69124B0](2);
      MEMORY[0x1E69124B0](v26);
      sub_1E3FE22AC(&qword_1ECF3DC40, MEMORY[0x1E69D3C00]);
      sub_1E4205DB4();
      sub_1E385B9C0(v8, v5);
      if (__swift_getEnumTagSinglePayload(v5, 1, v15) == 1)
      {
        sub_1E4207B64();
      }

      else
      {
        v34 = v37;
        (*(v37 + 32))(v20, v5, v15);
        sub_1E4207B64();
        OUTLINED_FUNCTION_3_238();
        sub_1E3FE22AC(v35, v36);
        OUTLINED_FUNCTION_15_159();
        (*(v34 + 8))(v20, v15);
      }

      sub_1E325F6F0(v8, &qword_1ECF2BD90);
      (*(v38 + 8))(v14, v9);
    }
  }

  else
  {
    MEMORY[0x1E69124B0](0);
    MEMORY[0x1E69124B0](v26);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE0F40()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  v8 = sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  v15 = type metadata accessor for SportsPlayIndex(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  v20 = sub_1E4205224();
  if ((v21 & 1) == 0)
  {
    v27 = v20;
    v28 = sub_1E4205214();
    if (!v28 || (v29 = v28, v48 = v10, v30 = sub_1E4205294(), v29, v47 = sub_1E4205534(), LOBYTE(v29) = v31, v30, (v29 & 1) != 0))
    {

      goto LABEL_18;
    }

    v32 = sub_1E4205214();
    if (v32)
    {
      v33 = v32;
      v34 = sub_1E4205294();

      sub_1E4205504();
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
      {
        v46 = *(v48 + 32);
        v46(v14, v7, v8);
        v35 = sub_1E4205214();
        if (v35 && (v36 = v35, v37 = sub_1E4205294(), v36, v38 = sub_1E42054F4(), v37, v38) && (v45 = sub_1E4205534(), v40 = v39, v38, (v40 & 1) == 0))
        {
          v41 = sub_1E40310B0();

          if (!v41)
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC38);
            v43 = *(v42 + 48);
            v44 = *(v42 + 64);
            *v19 = v47;
            v46(v19 + v43, v14, v8);
            *(v19 + v44) = v45;
            goto LABEL_19;
          }
        }

        else
        {
        }

        (*(v48 + 8))(v14, v8);
LABEL_18:
        *v19 = v27;
LABEL_19:
        type metadata accessor for SportsPlayIndex.IndexType(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_237();
        sub_1E3FE22F4(v19, v3);
        __swift_storeEnumTagSinglePayload(v3, 0, 1, v15);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    else
    {

      __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    }

    sub_1E325F6F0(v7, &qword_1ECF2BD90);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t sub_1E3FE12A0@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC30);
  v5 = *(v4 + 48);
  v6 = *(v4 + 64);
  *a2 = *a1;
  v7 = type metadata accessor for SportsPlayPeriod();
  v8 = *(v7 + 20);
  sub_1E4205784();
  OUTLINED_FUNCTION_2();
  (*(v9 + 16))(&a2[v5], &a1[v8]);
  sub_1E385B9C0(&a1[*(v7 + 24)], &a2[v6]);
  sub_1E3FE2254(a1, type metadata accessor for SportsPlayPeriod);
  type metadata accessor for SportsPlayIndex.IndexType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E3FE13AC()
{
  sub_1E4207B44();
  sub_1E3FE0B14();
  return sub_1E4207BA4();
}

uint64_t sub_1E3FE13F0()
{
  sub_1E4207B44();
  sub_1E3FE0B14();
  return sub_1E4207BA4();
}

uint64_t sub_1E3FE1430()
{
  sub_1E4205734();
  sub_1E3FE22AC(&qword_1ECF3DC78, MEMORY[0x1E69D3B58]);
  return sub_1E4205E84() & 1;
}

uint64_t sub_1E3FE14C0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E34AF5E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E3FE1618(v6);
  return sub_1E4207554();
}

void *sub_1E3FE153C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1E37FEA14(*(a1 + 16), 0);
  v4 = sub_1E3FE26F4(&v6, v3 + 4, v1, a1);

  sub_1E34AF4DC();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1E3FE1618(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1E4207914();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1E37FE4E4(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1E3FE17F0(v8, v9, a1, v5);
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
    sub_1E3FE16F8(0, v3, 1, a1);
  }
}

void sub_1E3FE16F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v21 = v7;
      v22 = v6;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v12 = sub_1E4205224();
        if (v13)
        {
          v14 = -1;
        }

        else
        {
          v14 = v12;
        }

        v15 = sub_1E4205224();
        v17 = v16;

        if (v17)
        {
          if (v14 < 0)
          {
            break;
          }
        }

        else if (v15 >= v14)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v18;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v22 + 8;
      v7 = v21 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E3FE17F0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v104 = v6;
        v99 = v7;
        v101 = v8;
        v11 = (*a3 + 8 * v7);
        v12 = 8 * v7;
        v14 = *v11;
        v13 = v11 + 2;
        v15 = *(*a3 + 8 * v10);
        v16 = v14;
        v17 = OUTLINED_FUNCTION_17_141();
        if (v18)
        {
          v19 = -1;
        }

        else
        {
          v19 = v17;
        }

        v109 = v19;
        sub_1E4205224();
        OUTLINED_FUNCTION_16_146();

        if (v5)
        {
          v20 = -1;
        }

        else
        {
          v20 = v4;
        }

        v106 = v20;
        while (1)
        {
          v21 = v10 + 1;
          v22 = v104;
          if (v10 + 1 >= v104)
          {
            break;
          }

          v23 = v10;
          v24 = *(v13 - 1);
          v25 = *v13;
          v26 = v24;
          v27 = OUTLINED_FUNCTION_17_141();
          if (v28)
          {
            v29 = -1;
          }

          else
          {
            v29 = v27;
          }

          sub_1E4205224();
          OUTLINED_FUNCTION_16_146();

          if (v5)
          {
            if (v106 < v109 == v29 < 0)
            {
              v22 = v21;
              break;
            }
          }

          else if (v106 < v109 == v4 >= v29)
          {
            v22 = v23 + 1;
            break;
          }

          ++v13;
          v10 = v21;
        }

        v9 = v99;
        v8 = v101;
        if (v106 < v109)
        {
          if (v22 < v99)
          {
            goto LABEL_138;
          }

          if (v99 < v22)
          {
            v30 = 8 * v22 - 8;
            v31 = v22;
            v32 = v99;
            do
            {
              if (v32 != --v31)
              {
                v33 = *a3;
                if (!*a3)
                {
                  goto LABEL_145;
                }

                v34 = *(v33 + v12);
                *(v33 + v12) = *(v33 + v30);
                *(v33 + v30) = v34;
              }

              ++v32;
              v30 -= 8;
              v12 += 8;
            }

            while (v32 < v31);
          }
        }

        v10 = v22;
      }

      v35 = a3[1];
      if (v10 < v35)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_137;
        }

        if (v10 - v9 < a4)
        {
          v36 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_139;
          }

          if (v36 >= v35)
          {
            v36 = a3[1];
          }

          if (v36 >= v9)
          {
            if (v10 == v36)
            {
              goto LABEL_52;
            }

            v100 = v9;
            v102 = v8;
            v37 = *a3;
            v38 = *a3 + 8 * v10 - 8;
            v39 = v9 - v10;
            v105 = v36;
LABEL_39:
            v107 = v38;
            v110 = v10;
            v40 = *(v37 + 8 * v10);
            v41 = v39;
            v42 = v38;
            while (1)
            {
              v43 = *v42;
              v44 = v40;
              v45 = v43;
              v46 = OUTLINED_FUNCTION_17_141();
              v48 = (v47 & 1) != 0 ? -1 : v46;
              sub_1E4205224();
              OUTLINED_FUNCTION_16_146();

              if (v5)
              {
                if (v48 < 0)
                {
                  goto LABEL_50;
                }
              }

              else if (v4 >= v48)
              {
                goto LABEL_50;
              }

              if (!v37)
              {
                break;
              }

              v49 = *v42;
              v40 = *(v42 + 8);
              *v42 = v40;
              *(v42 + 8) = v49;
              v42 -= 8;
              if (__CFADD__(v41++, 1))
              {
LABEL_50:
                v10 = v110 + 1;
                v38 = v107 + 8;
                --v39;
                if ((v110 + 1) == v105)
                {
                  v10 = v105;
                  v9 = v100;
                  v8 = v102;
                  goto LABEL_52;
                }

                goto LABEL_39;
              }
            }

            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

LABEL_140:
          __break(1u);
LABEL_141:
          v8 = sub_1E37FFF5C(v8);
          goto LABEL_107;
        }
      }

LABEL_52:
      if (v10 < v9)
      {
        goto LABEL_136;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1E37FFF70(0, *(v8 + 2) + 1, 1, v8);
      }

      v52 = *(v8 + 2);
      v51 = *(v8 + 3);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v8 = sub_1E37FFF70((v51 > 1), v52 + 1, 1, v8);
      }

      *(v8 + 2) = v53;
      v5 = v8 + 32;
      v54 = &v8[16 * v52 + 32];
      *v54 = v9;
      *(v54 + 1) = v10;
      v108 = *a1;
      if (!*a1)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v111 = v10;
      if (v52)
      {
        break;
      }

LABEL_101:
      v7 = v111;
      v6 = a3[1];
      if (v111 >= v6)
      {
        goto LABEL_105;
      }
    }

    while (1)
    {
      v55 = v53 - 1;
      v56 = &v5[16 * v53 - 16];
      v57 = &v8[16 * v53];
      if (v53 >= 4)
      {
        break;
      }

      if (v53 == 3)
      {
        v58 = *(v8 + 4);
        v59 = *(v8 + 5);
        v68 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        v61 = v68;
LABEL_72:
        if (v61)
        {
          goto LABEL_123;
        }

        v73 = *v57;
        v72 = *(v57 + 1);
        v74 = __OFSUB__(v72, v73);
        v75 = v72 - v73;
        v76 = v74;
        if (v74)
        {
          goto LABEL_126;
        }

        v77 = *(v56 + 1);
        v78 = v77 - *v56;
        if (__OFSUB__(v77, *v56))
        {
          goto LABEL_129;
        }

        if (__OFADD__(v75, v78))
        {
          goto LABEL_131;
        }

        if (v75 + v78 >= v60)
        {
          if (v60 < v78)
          {
            v55 = v53 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_87;
      }

      if (v53 < 2)
      {
        goto LABEL_125;
      }

      v80 = *v57;
      v79 = *(v57 + 1);
      v68 = __OFSUB__(v79, v80);
      v75 = v79 - v80;
      v76 = v68;
LABEL_87:
      if (v76)
      {
        goto LABEL_128;
      }

      v82 = *v56;
      v81 = *(v56 + 1);
      v68 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v68)
      {
        goto LABEL_130;
      }

      if (v83 < v75)
      {
        goto LABEL_101;
      }

LABEL_94:
      if (v55 - 1 >= v53)
      {
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
        goto LABEL_140;
      }

      if (!*a3)
      {
        goto LABEL_143;
      }

      v87 = &v5[16 * v55 - 16];
      v88 = *v87;
      v4 = &v5[16 * v55];
      v89 = *(v4 + 1);
      sub_1E3FE1E38((*a3 + 8 * *v87), (*a3 + 8 * *v4), (*a3 + 8 * v89), v108);
      if (v113)
      {
        goto LABEL_115;
      }

      if (v89 < v88)
      {
        goto LABEL_118;
      }

      v9 = v8;
      v8 = *(v8 + 2);
      if (v55 > v8)
      {
        goto LABEL_119;
      }

      *v87 = v88;
      *(v87 + 1) = v89;
      if (v55 >= v8)
      {
        goto LABEL_120;
      }

      v113 = 0;
      v53 = (v8 - 1);
      memmove(&v5[16 * v55], v4 + 16, 16 * &v8[-v55 - 1]);
      v9[2] = v8 - 1;
      v90 = v8 > 2;
      v8 = v9;
      if (!v90)
      {
        goto LABEL_101;
      }
    }

    v62 = &v5[16 * v53];
    v63 = *(v62 - 8);
    v64 = *(v62 - 7);
    v68 = __OFSUB__(v64, v63);
    v65 = v64 - v63;
    if (v68)
    {
      goto LABEL_121;
    }

    v67 = *(v62 - 6);
    v66 = *(v62 - 5);
    v68 = __OFSUB__(v66, v67);
    v60 = v66 - v67;
    v61 = v68;
    if (v68)
    {
      goto LABEL_122;
    }

    v69 = *(v57 + 1);
    v70 = v69 - *v57;
    if (__OFSUB__(v69, *v57))
    {
      goto LABEL_124;
    }

    v68 = __OFADD__(v60, v70);
    v71 = v60 + v70;
    if (v68)
    {
      goto LABEL_127;
    }

    if (v71 >= v65)
    {
      v85 = *v56;
      v84 = *(v56 + 1);
      v68 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v68)
      {
        goto LABEL_135;
      }

      if (v60 < v86)
      {
        v55 = v53 - 2;
      }

      goto LABEL_94;
    }

    goto LABEL_72;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
  v9 = *a1;
  if (!*a1)
  {
LABEL_147:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_141;
  }

LABEL_107:
  v91 = v8 + 16;
  v92 = *(v8 + 2);
  while (v92 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_144;
    }

    v93 = v8;
    v8 += 16 * v92;
    v94 = *v8;
    v95 = &v91[2 * v92];
    v96 = v95[1];
    sub_1E3FE1E38((*a3 + 8 * *v8), (*a3 + 8 * *v95), (*a3 + 8 * v96), v9);
    if (v113)
    {
      break;
    }

    if (v96 < v94)
    {
      goto LABEL_132;
    }

    if (v92 - 2 >= *v91)
    {
      goto LABEL_133;
    }

    *v8 = v94;
    *(v8 + 1) = v96;
    v97 = *v91 - v92;
    if (*v91 < v92)
    {
      goto LABEL_134;
    }

    v113 = 0;
    v92 = *v91 - 1;
    memmove(v95, v95 + 2, 16 * v97);
    *v91 = v92;
    v8 = v93;
  }

LABEL_115:
}

uint64_t sub_1E3FE1E38(void **__dst, id *__src, id *a3, void **a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = a3 - __src;
  if (v9 < v10)
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v12 = &v5[v9];
    v43 = v12;
    while (1)
    {
      if (v5 >= v12 || v7 >= v6)
      {
        v24 = v8;
        goto LABEL_48;
      }

      v14 = v7;
      v15 = *v5;
      v16 = *v7;
      v17 = v15;
      v18 = OUTLINED_FUNCTION_17_141();
      if (v19)
      {
        v20 = -1;
      }

      else
      {
        v20 = v18;
      }

      sub_1E4205224();
      OUTLINED_FUNCTION_16_146();

      if (v7)
      {
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v4 < v20)
      {
LABEL_17:
        v21 = v7++;
        v22 = v8 == v14;
        goto LABEL_20;
      }

      v21 = v5;
      v22 = v8 == v5++;
LABEL_20:
      v12 = v43;
      if (!v22)
      {
        *v8 = *v21;
      }

      ++v8;
    }
  }

  if (a4 != __src || &__src[v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
  }

  v12 = &v5[v10];
  v41 = v8;
LABEL_29:
  v24 = v7--;
  --v6;
  v42 = v24;
  while (v12 > v5 && v24 > v8)
  {
    v26 = v5;
    v44 = v12;
    v27 = v12 - 1;
    v28 = v7;
    v29 = *v7;
    v30 = *(v12 - 1);
    v31 = v29;
    v32 = sub_1E4205224();
    if (v33)
    {
      v34 = -1;
    }

    else
    {
      v34 = v32;
    }

    v35 = sub_1E4205224();
    v37 = v36;

    if (v37)
    {
      v7 = v28;
      v24 = v42;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v7 = v28;
      v24 = v42;
      if (v35 < v34)
      {
LABEL_45:
        v5 = v26;
        v8 = v41;
        v12 = v44;
        if (v6 + 1 != v24)
        {
          *v6 = *v7;
        }

        goto LABEL_29;
      }
    }

    if (v44 != v6 + 1)
    {
      *v6 = *v27;
    }

    --v6;
    v12 = v27;
    v5 = v26;
    v8 = v41;
  }

LABEL_48:
  v38 = v12 - v5;
  if (v24 != v5 || v24 >= &v5[v38])
  {
    memmove(v24, v5, 8 * v38);
  }

  return 1;
}

void sub_1E3FE209C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8C0);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = a1;
  }

  else
  {
    sub_1E377E1B0(v11, a2, a3, a1, v15);
  }
}

uint64_t sub_1E3FE21D8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_106();
  v5(v4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1E3FE2254(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3FE22AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3FE22F4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_106();
  v5(v4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1E3FE2408()
{
  result = type metadata accessor for SportsPlayIndex.IndexType(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3FE24D8()
{
  result = type metadata accessor for SportsPlayIndex.IndexType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E3FE254C()
{
  sub_1E3FE25D4();
  if (v0 <= 0x3F)
  {
    sub_1E3FE25FC();
    if (v1 <= 0x3F)
    {
      sub_1E3FE266C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E3FE25D4()
{
  result = qword_1ECF3DC60;
  if (!qword_1ECF3DC60)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1ECF3DC60);
  }

  return result;
}

void sub_1E3FE25FC()
{
  if (!qword_1ECF3DC68)
  {
    sub_1E4205B24();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECF3DC68);
    }
  }
}

void sub_1E3FE266C()
{
  if (!qword_1ECF3DC70)
  {
    sub_1E4205784();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BD90);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECF3DC70);
    }
  }
}

void *sub_1E3FE26F4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3FE2868@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FE2854();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3FE28BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FE28A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3FE2968@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FE2954();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3FE29BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FE29A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3FE2A10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FE29FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3FE2A50()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_68_3();
  return sub_1E4200684();
}

unint64_t sub_1E3FE2AD4(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

unint64_t sub_1E3FE2AE4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E3FE2AD4(*a1);
  *a2 = result;
  return result;
}

void sub_1E3FE2B20(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v5 = *MEMORY[0x1E69DD958];
  *(inited + 32) = *MEMORY[0x1E69DD958];
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_0_315();
  sub_1E3FE5734(v6, v7);

  v8 = v5;
  OUTLINED_FUNCTION_34();
  v9 = sub_1E4205CB4();
  v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v11 = sub_1E376403C(a1, a2, v9);
  UIAccessibilityPostNotification(*MEMORY[0x1E69DD888], v11);
}

uint64_t sub_1E3FE2C60()
{
  v0 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_238();
  sub_1E3FE5734(v8, v9);
  v10 = sub_1E42006B4();
  (*(v2 + 8))(v6, v0);
  return v10;
}

uint64_t sub_1E3FE2D8C()
{
  v1 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel____lazy_storage___announcementQueue;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel____lazy_storage___announcementQueue))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel____lazy_storage___announcementQueue);
  }

  else
  {
    v3 = v0;
    type metadata accessor for SportsVoiceOverAnnouncementQueue();
    v6 = &type metadata for SportsVoiceOverViewModel.SportsVoiceOverInterface;
    v7 = &off_1F5D915F8;
    v2 = sub_1E418C7C0(v5);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E3FE2E1C()
{
  v0 = swift_allocObject();
  sub_1E3FE2E54();
  return v0;
}

uint64_t sub_1E3FE2E54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498);
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  sub_1E4200634();
  v4 = *(v2 + 32);
  v5 = OUTLINED_FUNCTION_8_7();
  v4(v5);
  OUTLINED_FUNCTION_4_142();
  v6 = OUTLINED_FUNCTION_8_7();
  v4(v6);
  OUTLINED_FUNCTION_4_142();
  v7 = OUTLINED_FUNCTION_8_7();
  v4(v7);
  OUTLINED_FUNCTION_4_142();
  v8 = OUTLINED_FUNCTION_8_7();
  v4(v8);
  OUTLINED_FUNCTION_4_142();
  v9 = OUTLINED_FUNCTION_8_7();
  v4(v9);
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_runningClockViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_timerQueued) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_clockErrorActive) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel____lazy_storage___announcementQueue) = 0;
  sub_1E3FE3008();
  return v0;
}

void sub_1E3FE3008()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_4_238();
  sub_1E3FE5734(v9, v10);
  sub_1E4200844();

  v11 = *(v2 + 8);
  v11(v6, v0);
  OUTLINED_FUNCTION_26_112();
  sub_1E42004C4();
  swift_endAccess();

  v12 = [v7 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E4200844();

  v11(v6, v0);
  OUTLINED_FUNCTION_26_112();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE3268(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v97 = &type metadata for ViewModelKeys.Sports;
  v98 = &off_1F5D7BC68;
  LOBYTE(v96[0]) = 6;
  sub_1E3F9F164(v96);
  if (v101.name._object)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    if (swift_dynamicCast())
    {
      v88 = a2;
      v89 = a1;
      HIDWORD(v90) = a3;
      v91 = v3;
      v8 = v99[0];
      isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1(v96);
      v17 = 0;
      v18 = *(v8 + 16);
      v92 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v18 == v17)
        {

          v4 = v91;
          v72 = v92;
          LOBYTE(a3) = BYTE4(v90);
          a2 = v88;
          a1 = v89;
          goto LABEL_30;
        }

        if (v17 >= *(v8 + 16))
        {
          __break(1u);
          return;
        }

        v97 = &type metadata for ViewModelKeys;
        v98 = &off_1F5D7BCA8;
        LOBYTE(v96[0]) = 7;
        v19 = OUTLINED_FUNCTION_10_159(isUniquelyReferenced_nonNull_native, v10, v11, v12, v13, v14, v15, v16, v83, v84, v85, v86, v87);
        if (!v100)
        {
          __swift_destroy_boxed_opaque_existential_1(v96);
          isUniquelyReferenced_nonNull_native = sub_1E325F6F0(v99, &unk_1ECF296E0);
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_17_142(v19, v20, v21, v22, v23, v24, v25, v26, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, name, name_8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1(v96);
          goto LABEL_20;
        }

        v27 = name_8;
        v28 = __swift_destroy_boxed_opaque_existential_1(v96);
        v97 = &type metadata for ViewModelKeys.Sports;
        v98 = &off_1F5D7BC68;
        LOBYTE(v96[0]) = 22;
        v36 = OUTLINED_FUNCTION_10_159(v28, v29, v30, v31, v32, v33, v34, v35, v83, v84, v85, v86, v87);
        if (!v100)
        {

          __swift_destroy_boxed_opaque_existential_1(v96);
          isUniquelyReferenced_nonNull_native = sub_1E325F6F0(v99, &unk_1ECF296E0);
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_17_142(v36, v37, v38, v39, v40, v41, v42, v43, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, name, name_8);
        if ((swift_dynamicCast() & 1) == 0)
        {

          isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1(v96);
          goto LABEL_20;
        }

        name = name_8;
        v44 = __swift_destroy_boxed_opaque_existential_1(v96);
        v97 = &type metadata for ViewModelKeys.Sports;
        v98 = &off_1F5D7BC68;
        LOBYTE(v96[0]) = 23;
        v52 = OUTLINED_FUNCTION_10_159(v44, v45, v46, v47, v48, v49, v50, v51, v83, v84, v85, v86, v87);
        if (!v100)
        {
          break;
        }

        OUTLINED_FUNCTION_17_142(v52, v53, v54, v55, v56, v57, v58, v59, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, name_8, name_8);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(v96);
          v60._countAndFlagsBits = v27;
          v60._object = v95;
          v61._countAndFlagsBits = name;
          v61._object = v95;
          SportsVoiceOverUtility.Competitor.init(canonicalId:name:isHomeTeam:)(&v101, v60, v61, name_8);
          object = v101.canonicalId._object;
          if (!v101.canonicalId._object)
          {
            goto LABEL_20;
          }

          countAndFlagsBits = v101.canonicalId._countAndFlagsBits;
          name = v101.name._countAndFlagsBits;
          v87 = v101.name._object;
          isHomeTeam = v101.isHomeTeam;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v68 = OUTLINED_FUNCTION_27();
            isUniquelyReferenced_nonNull_native = sub_1E3FE5020(v68, v69, v70, v71);
            v92 = isUniquelyReferenced_nonNull_native;
          }

          v66 = *(v92 + 16);
          v65 = *(v92 + 24);
          if (v66 >= v65 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_1E3FE5020((v65 > 1), v66 + 1, 1, v92);
            v92 = isUniquelyReferenced_nonNull_native;
          }

          ++v17;
          *(v92 + 16) = v66 + 1;
          v67 = v92 + 40 * v66;
          *(v67 + 32) = countAndFlagsBits;
          *(v67 + 40) = object;
          *(v67 + 48) = name;
          *(v67 + 56) = v87;
          *(v67 + 64) = isHomeTeam;
        }

        else
        {

          isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1(v96);
LABEL_20:
          ++v17;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v96);
      isUniquelyReferenced_nonNull_native = sub_1E325F6F0(v99, &unk_1ECF296E0);
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(v96);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v96);
    sub_1E325F6F0(&v101, &unk_1ECF296E0);
  }

  v72 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v73 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors;
  swift_beginAccess();
  *(v4 + v73) = v72;

  type metadata accessor for SportsVoiceOverUtility();
  if (a3)
  {
    sub_1E38EB2E4(a1, a2);
  }

  else
  {
    sub_1E38EA474(a1, a2, 1);
    sub_1E3FE2A50();
    sub_1E38EA474(a1, a2, 0);
  }

  sub_1E3FE2A50();
  if (a2)
  {
    v74 = sub_1E3FE381C(a2);
    if (v74)
    {
      if (v74[2])
      {
        v75 = v74[4];
        v76 = v74[5];

        v101.canonicalId._countAndFlagsBits = v75;
        v101.canonicalId._object = v76;
        v99[0] = 47042;
        v99[1] = 0xA200000000000000;
        sub_1E32822E0();
        OUTLINED_FUNCTION_25();
        sub_1E42071F4();
      }
    }
  }

  sub_1E3FE2A50();
  sub_1E38EA860(a1, a3 & 1, v77, v78, v79, v80, v81, v82);
  sub_1E3FE2A50();
}

uint64_t sub_1E3FE381C(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3FE3850(uint64_t result)
{
  v1 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v49 = result + 32;
  v2 = *(result + 16);
  while (1)
  {
    if (v2 == v1)
    {
      v46 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors;
      swift_beginAccess();
      *(v47 + v46) = v48;
    }

    if (v1 >= v2)
    {
      break;
    }

    v3 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_29;
    }

    v52.name._object = &type metadata for ViewModelKeys.Sports;
    *&v52.isHomeTeam = &off_1F5D7BC68;
    v4 = OUTLINED_FUNCTION_8_188(7, v47, v48, v49, v50, v51, v52.canonicalId._countAndFlagsBits);
    if (!v54)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_16_147(v4, v5, v6, v7, v8, v9, v10, v11, v47, v48, v49, v50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v13 = v50;
    v12 = v51;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v52.name._object = &type metadata for ViewModelKeys.Sports;
    *&v52.isHomeTeam = &off_1F5D7BC68;
    v14 = OUTLINED_FUNCTION_8_188(22, v47, v48, v49, v50, v51, v52.canonicalId._countAndFlagsBits);
    if (!v54)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_16_147(v14, v15, v16, v17, v18, v19, v20, v21, v47, v48, v49, v50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v22 = v50;
    v23 = v51;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v52.name._object = &type metadata for ViewModelKeys.Sports;
    *&v52.isHomeTeam = &off_1F5D7BC68;
    v24 = OUTLINED_FUNCTION_8_188(23, v47, v48, v49, v50, v51, v52.canonicalId._countAndFlagsBits);
    if (!v54)
    {

LABEL_15:

LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(&v52);
      sub_1E325F6F0(v53, &unk_1ECF296E0);
LABEL_20:
      countAndFlagsBits = 0;
      object = 0;
      v37 = 0;
      v36 = 0;
      isHomeTeam = 0;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_16_147(v24, v25, v26, v27, v28, v29, v30, v31, v47, v48, v49, v50);
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_18:

LABEL_19:
      __swift_destroy_boxed_opaque_existential_1(&v52);
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v52);
    v32._countAndFlagsBits = v13;
    v32._object = v12;
    v33._countAndFlagsBits = v22;
    v33._object = v23;
    SportsVoiceOverUtility.Competitor.init(canonicalId:name:isHomeTeam:)(&v52, v32, v33, v50);
    countAndFlagsBits = v52.canonicalId._countAndFlagsBits;
    object = v52.canonicalId._object;
    v37 = v52.name._countAndFlagsBits;
    v36 = v52.name._object;
    isHomeTeam = v52.isHomeTeam;
LABEL_21:

    ++v1;
    if (object)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v42 = OUTLINED_FUNCTION_27();
        result = sub_1E3FE5020(v42, v43, v44, v45);
        v48 = result;
      }

      v40 = *(v48 + 16);
      v39 = *(v48 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_1E3FE5020((v39 > 1), v40 + 1, 1, v48);
        v48 = result;
      }

      *(v48 + 16) = v40 + 1;
      v41 = v48 + 40 * v40;
      *(v41 + 32) = countAndFlagsBits;
      *(v41 + 40) = object;
      *(v41 + 48) = v37;
      *(v41 + 56) = v36;
      *(v41 + 64) = isHomeTeam;
      v1 = v3;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1E3FE3B24()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v33 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = sub_1E4205074();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  v32 = v3;
  v20 = sub_1E42056C4();
  if (v20)
  {
    v21 = v20;
    v22 = (*(v15 + 104))(v19, *MEMORY[0x1E69D3A28], v13);
    MEMORY[0x1EEE9AC00](v22);
    *(&v32 - 2) = v19;
    v23 = sub_1E3FE52FC(sub_1E3FE52DC, (&v32 - 4), v21);

    (*(v15 + 8))(v19, v13);
  }

  else
  {
    v23 = 0;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_clockErrorActive) = v23;
  type metadata accessor for SportsVoiceOverUtility();
  v24 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v25 = *(v1 + v24);
  v26 = v32;

  v27 = sub_1E38E8B18(v26, v25);
  v28 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility;
  *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility) = v27;

  type metadata accessor for SportsRunningClockViewModel();
  *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_runningClockViewModel) = sub_1E3F833B0(v26);

  sub_1E3FE3E68();
  v29 = sub_1E42056A4();
  sub_1E4205044();

  v30 = v33;
  (*(v5 + 104))(v9, *MEMORY[0x1E69D3B78], v33);
  LOBYTE(v29) = sub_1E3823168();
  v31 = *(v5 + 8);
  v31(v9, v30);
  v31(v12, v30);
  if (v29)
  {
    if (*(v1 + v28))
    {

      sub_1E38E9CB4();
      OUTLINED_FUNCTION_12_157();
    }

    else
    {
      OUTLINED_FUNCTION_25_100();
    }

    OUTLINED_FUNCTION_11_175();
    sub_1E3FE3F18();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE3E68()
{
  v1 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility))
  {

    sub_1E38E98B0();
    OUTLINED_FUNCTION_12_157();
  }

  else
  {
    OUTLINED_FUNCTION_25_100();
  }

  OUTLINED_FUNCTION_11_175();
  if (*(v0 + v1))
  {

    sub_1E38E98B0();
    OUTLINED_FUNCTION_12_157();
  }

  else
  {
    OUTLINED_FUNCTION_25_100();
  }

  return OUTLINED_FUNCTION_11_175();
}

uint64_t sub_1E3FE3F18()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverTimer))
  {

    sub_1E42004E4();
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_timerQueued) = 0;
  return result;
}

void sub_1E3FE3F68()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_clockErrorActive) = sub_1E3F95F4C();
  type metadata accessor for SportsVoiceOverUtility();
  v16 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v17 = *(v1 + v16);

  v18 = sub_1E38E8DF0(v5, v17, v3);

  v19 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility;
  *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility) = v18;

  if ((v5 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SportsRunningClockViewModel();
    *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_runningClockViewModel) = sub_1E3F833B0(v5);
  }

  sub_1E3FE3E68();
  sub_1E3F958F0(v5);
  (*(v8 + 104))(v12, *MEMORY[0x1E69D3B78], v6);
  v20 = sub_1E3823168();
  v21 = *(v8 + 8);
  v21(v12, v6);
  v21(v15, v6);
  if (v20)
  {
    if (*(v1 + v19))
    {

      sub_1E38E9CB4();
      OUTLINED_FUNCTION_12_157();
    }

    else
    {
      OUTLINED_FUNCTION_25_100();
    }

    OUTLINED_FUNCTION_11_175();
    sub_1E3FE3F18();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE4198()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - v3;
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_timerQueued) = 1;
  if (UIAccessibilityIsVoiceOverRunning() || (result = UIAccessibilityIsSpeakScreenEnabled(), result))
  {
    sub_1E3FE53D0();
    v6 = [objc_opt_self() mainRunLoop];
    v7 = sub_1E4207054();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    v8 = sub_1E4206F14();

    sub_1E325F6F0(v4, &unk_1ECF3DB30);
    v14 = v8;
    sub_1E4206F04();
    sub_1E3FE5734(&qword_1EE23AE48, MEMORY[0x1E6969F70]);
    v9 = sub_1E4200584();

    v14 = v9;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB40);
    OUTLINED_FUNCTION_68_3();
    sub_1E32752B0(v10, v11);
    v12 = sub_1E4200844();

    *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverTimer) = v12;
  }

  return result;
}

uint64_t sub_1E3FE48F4(unint64_t a1)
{
  result = sub_1E3798694(a1);
  v17 = result;
  v3 = 0;
  v15 = a1;
  v16 = a1 & 0xC000000000000001;
  v14 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = MEMORY[0x1E69E7CC0];
  while (v17 != v3)
  {
    if (v16)
    {
      result = MEMORY[0x1E6911E60](v3, v15);
    }

    else
    {
      if (v3 >= *(v14 + 16))
      {
        goto LABEL_20;
      }

      result = *(v15 + 8 * v3 + 32);
    }

    v5 = result;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    sub_1E3FE4AD8();

    if (v19)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v10 = OUTLINED_FUNCTION_27();
        result = sub_1E3FE5134(v10, v11, v12, v4);
        v4 = result;
      }

      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      v8 = v4;
      if (v7 >= v6 >> 1)
      {
        result = sub_1E3FE5134((v6 > 1), v7 + 1, 1, v4);
        v8 = result;
      }

      *(v8 + 16) = v7 + 1;
      v4 = v8;
      v9 = (v8 + 56 * v7);
      v9[4] = v18;
      v9[5] = v19;
      v9[6] = v20;
      v9[7] = v21;
      v9[8] = v22;
      v9[9] = v23;
      v9[10] = v24;
    }

    else
    {
      result = sub_1E3FE541C(v18, 0);
    }

    ++v3;
  }

  v13 = sub_1E3FE2D8C();
  (*(*v13 + 224))(v4);
}

void sub_1E3FE4AD8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v39 - v12;
  v14 = sub_1E4205204();
  if (!v15)
  {
    goto LABEL_4;
  }

  v43 = v14;
  v16 = sub_1E4205224();
  if ((v17 & 1) == 0)
  {
    v41 = v16;
    v42 = v1;
    v18 = v6;
    v19 = sub_1E3FE2D8C();
    v20 = (*(*v19 + 168))();
    v22 = v21;

    if (v22)
    {
      v23 = v18;
      v24 = v42;
      if (v41 < 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v23 = v18;
      v24 = v42;
      if (v20 >= v41)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v25 = *(v24 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_runningClockViewModel);
    v40 = v4;
    if (v25)
    {

      sub_1E42053C4();

      (*(v23 + 32))(v13, v10, v4);
    }

    else
    {
      (*(v23 + 104))(v13, *MEMORY[0x1E69D3D80], v4);
    }

    v39[1] = type metadata accessor for SportsVoiceOverUtility();

    sub_1E42051F4();
    v26 = OUTLINED_FUNCTION_34();
    v27(v26);

    v28 = OUTLINED_FUNCTION_165();
    v30 = v29;

    (*(v23 + 8))(v13, v40);
    if (v30)
    {
      sub_1E42051F4();
      v31 = OUTLINED_FUNCTION_34();
      sub_1E418C5D4(v31, v32, v28, v30, v33, v34, v41, v35);
      v36 = v45;
      v37 = v46;
      v38 = v47;
      *v3 = v44;
      *(v3 + 16) = v36;
      *(v3 + 32) = v37;
      *(v3 + 48) = v38;
      goto LABEL_5;
    }
  }

LABEL_3:

LABEL_4:
  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
LABEL_5:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE4DFC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if ((UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSpeakScreenEnabled()) && *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_timerQueued) == 1)
    {
      sub_1E3FE4198();
    }

    else if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSpeakScreenEnabled())
    {
      if (*(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverTimer))
      {

        sub_1E42004E4();
      }
    }
  }

  return result;
}

uint64_t sub_1E3FE4EB0()
{
  v1 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel__firstTeamVoiceOverText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v5 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel__secondTeamVoiceOverText);
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel__clockVoiceOverText);
  (v4)(v6);
  v7 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel__finalScoreVoiceOverText);
  (v4)(v7);
  v8 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel__headerVoiceOverText);
  (v4)(v8);

  return v0;
}